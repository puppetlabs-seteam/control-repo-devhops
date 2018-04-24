
# Demo Profiles for DEVHops London
class profile::platform::demo {
  # OS Specific
  case $::kernel {
    'windows': {
      include ::profile::platform::demo::windows
    }
    'Linux':   {
      # None Yet
    }
    default: {
      fail('Unsupported operating system!')
    }
  }

}
