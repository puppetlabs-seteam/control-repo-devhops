# DEVHops Demo
# Baseline Configuration plus Windows Domain Member
#
class role::windows_domain_member {
  include profile::platform::baseline
  include profile::platform::domain_member
}
