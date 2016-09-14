# This is a profile base that does stuff
class profile::base {
  user { 'root':
    ensure   => 'present',
    comment  => 'root',
    gid      => '0',
    home     => '/root',
    shell    => '/bin/bash',
    uid      => '0',
  }

  user { 'jaime':
    ensure     => present,
    managehome => true,
  }

  include ntp

  include ::epel

  package { 'vim-enhanced':
    ensure => installed,
  }

}
