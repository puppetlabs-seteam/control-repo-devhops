class profile::dsc::dscfirewall {

  dsc_xFirewall { 'inbound-2222':
    dsc_ensure => 'present',
    dsc_name => 'inbound2222',
    dsc_displayname => 'Inbound DSC 2222 Test',
    dsc_displaygroup => 'A Puppet + DSC Test',
    dsc_action => 'Allow',
    dsc_enabled => 'False',
    dsc_direction => 'Inbound',
  }
}
