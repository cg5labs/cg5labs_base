# InSpec test for recipe cg5labs_base::fw

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

# check firewall ports
describe port(22) do
  it { should be_listening }
  its('processes') {should include 'sshd'}
end


