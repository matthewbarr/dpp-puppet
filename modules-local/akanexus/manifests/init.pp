# == Class: akanexus
#
class akanexus {
  class{ '::java': }

  class{ '::nexus':
  version    => '2.11.1',
  revision   => '01',
  nexus_root => '/srv', # All directories and files will be relative to this
}

Class['::java'] ->
Class['::nexus']

}
