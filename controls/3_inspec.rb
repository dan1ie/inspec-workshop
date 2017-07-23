control "CIS-1-5-1" do
 impact 1.0
 title "Ensure core dumps are restricted (Scored)"
 desc "A core dump is the memory of an executable program. It is generally used to determine
why a program aborted. It can also be used to glean confidential information from a core
file. The system provides the ability to set a soft limit for core dumps, but this can be
overridden by the user."
 describe command ('sysctl fs.suid_dumpable') do
  its ('stdout') { should match (/[fs.suid_dumpable = 0]/)}
 end
 describe file ('/etc/security/limits.conf') do
  its ('content') {should include 'hard    core            0'}
 end
end

