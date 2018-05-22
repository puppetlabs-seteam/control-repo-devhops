# DEVHops Demo
# Baseline Configuration plus Windows Domain Controller
#
class role::devhops_dc {
  include profile::platform::baseline
  include profile::platform::domain_controller
}
