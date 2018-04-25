# Windows DEMO Profiles
class profile::platform::demo::windows {
  # Various DSC Type operations.
  include ::profile::platform::demo::windows::dsc::dscaddreg
  include ::profile::platform::demo::windows::dsc::dscfile
  include ::profile::platform::demo::windows::dsc::dscfirewall
  # Set some registry entries.
  include ::profile::platform::demo::windows::registry::regentries
  # Create some demo users.
  include ::profile::platform::demo::windows::users::demousers
  # Set the power configuration.
  include ::profile::platform::demo::windows::power::power
}
