control "CIS-1-5-2" do
 impact 1.0
 title "Ensure XD/NX support is enabled (Not Scored)"
 desc "Recent processors in the x86 family support the ability to prevent code execution on a per
memory page basis."
 describe command ('dmesg | grep NX') do
  its ('stdout') { should include 'NX (Execute Disable) protection: active'}
 end
end
