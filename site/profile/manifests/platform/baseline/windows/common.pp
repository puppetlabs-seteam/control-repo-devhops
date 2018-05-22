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
}
