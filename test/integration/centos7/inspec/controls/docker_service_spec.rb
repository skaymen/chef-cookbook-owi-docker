describe systemd_service('docker') do
	it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end

describe command('docker') do
  it { should exist }
  its('exit_status') { should eq 0 }
end
