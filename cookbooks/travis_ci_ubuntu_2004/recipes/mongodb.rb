# frozen_string_literal: true

apt_repository 'mongodb-6.0' do
  uri 'http://repo.mongodb.org/apt/ubuntu'
  distribution "focal/mongodb-org/6.0"
  components %w[multiverse]
  key 'https://www.mongodb.org/static/pgp/server-6.0.asc'
  retries 2
  retry_delay 30
end

package 'mongodb-org' do
  action :install
end

service 'mongodb' do
  action %i[stop disable]
end

apt_repository 'mongodb-6.0' do
  action :remove
end
