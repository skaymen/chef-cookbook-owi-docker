describe command('/usr/local/bin/docker-machine') do
  it { should exist }
  its('exit_status') { should eq 0 }
end
