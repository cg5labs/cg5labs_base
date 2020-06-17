# InSpec test for recipe cg5labs_motd::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# check /etc/motd
describe file('/etc/motd') do
  its('content') { should match(%r{^Host manged by Chef\.$}) }
  its('content') { should match(%r{.*10.0.2.15.*}) }
  its('content') { should match(%r{.*default-.*}) }
  its('content') { should match(%r{^Project: cg5labs$}) }
  its('content') { should match(%r{^Owner: Chris Scheible$}) }
end

