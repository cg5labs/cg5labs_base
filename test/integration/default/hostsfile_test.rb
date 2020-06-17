# InSpec test for recipe cg5labs_base::hosts_wrapper

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# check /etc/hosts
describe file('/etc/hosts') do
  its('content') { should match(%r{^192\.168\.17\.1(.*)pluto.cg5labs.ddns.net$}) }
  its('content') { should match(%r{^10\.0\.2\.15(.*)default-(.*)}) }
end


