# DEVHops London Demo
# Baseline Configuration plus specific Windows profiles.
#
class role::devhops_demo {
  include ::profile::platform::baseline
  include ::profile::platform::demo
}
