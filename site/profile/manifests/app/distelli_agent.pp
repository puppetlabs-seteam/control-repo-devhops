class profile::app::distelli_agent {
  class { '::distelli::agent':
    access_token => Sensitive(lookup('profile::app::distelli_agent::access_token')),
    secret_key   => Sensitive(lookup('profile::app::distelli_agent::secret_key')),
  }
}
