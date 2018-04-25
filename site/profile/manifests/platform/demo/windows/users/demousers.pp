#
class profile::platform::demo::windows::users::demousers {

  user { 'DevHopsdemo_1':
    # on Windows can use username, domain\user and SID
    ensure     => present,
    name       => 'DevHops DemoUser 1',
    managehome => true,
    password   => 'GarbledPasswd!',
    groups     => ['Administrators', 'Users']
  }

  user { 'DevHopsdemo_2':
    # on Windows can use username, domain\user and SID
    ensure     => present,
    name       => 'DevHops DemoUser 2',
    managehome => true,
    password   => 'GarbledPasswd!',
    groups     => ['Administrators', 'Users']
  }

}
