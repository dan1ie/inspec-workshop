
control "CIS-1-2-2" do
 impact 1.0
 title "Ensure gpgcheck is globally activated (scored)"
 desc "Most package managers implement GPG key signing to verify package integrity during installion."
 describe file ('/etc/yum.conf') do
  its('content') { should match /gpgcheck=1/ }
 end
end
