describe command('/usr/local/bin/docker-compose') do
  it { should exist }
end

describe command('/usr/local/bin/docker-compose --version') do
  its('exit_status') { should eq 0 }
end
