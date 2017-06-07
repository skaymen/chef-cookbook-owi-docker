require 'spec_helper'

describe 'owi_docker::users_to_docker_group CentOS 7.x' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'centos', version: '7.3.1611').converge('owi_docker::users_to_docker_group') }

  before do
    stub_command('grep -q docker /etc/group').and_return(true)
  end

  it 'modifies a docker group ' do
    expect(chef_run).to modify_group('docker')
  end
end
