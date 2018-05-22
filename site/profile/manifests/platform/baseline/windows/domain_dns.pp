#Only use this profile if your environment has a domain controller
class profile::platform::baseline::windows::domain_dns {
  $query    = "inventory[facts] { facts.hostname ~ 'windchops' }"
  $response = puppetdb_query($query)
  $dcip     = $response[0]['facts']['ipaddress']

  dsc_xdnsserveraddress { 'dnsserveraddress':
    dsc_address        => $dcip,
    dsc_interfacealias => 'ethernet',
    dsc_addressfamily  => 'ipv4',
  }
}
