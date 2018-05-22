class profile::platform::baseline::windows::common {

  reboot{'dsc_reboot':
    when    => pending,
    timeout => 15,
  }

  registry_key { 'HKLM\SOFTWARE\Policies\Microsoft\Windows Defender':
    ensure => present,
    before => Registry_value['DisableAntiSpyware'],
  }

  registry_value { 'DisableAntiSpyware':
    path   => 'HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\DisableAntiSpyware',
    ensure => present,
    type   => dword,
    data   => 1,
  }

  $query    = "inventory[facts] { facts.hostname ~ 'windchops' }"
  $response = puppetdb_query($query)
  $dcip   = $response[0]['facts']['ipaddress']

  dsc_xdnsserveraddress { 'dnsserveraddress':
    dsc_address        => $dcip,
    dsc_interfacealias => 'ethernet',
    dsc_addressfamily  => 'ipv4',
  }
}
