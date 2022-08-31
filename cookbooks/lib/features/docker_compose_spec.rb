# frozen_string_literal: true

describe 'docker-compose installation' do
  describe command('docker-compose --version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should match(/^Docker Compose version ?\s+v\d+\.\d+\.\d+/) }
  end
end
