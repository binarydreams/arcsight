# Class: arcsight
#
# This module manages arcsight
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class arcsight {
  
  group { "arcsight" :
    ensure => present,    
  }
    
  user { "arcsight" :
    ensure => present,
    managehome => true,
    shell => '/bin/bash',
    expiry => 'absent',
    gid => 'arcsight',
    password => '!!'
  }
  
  # Only for arcsight::esm file { '/opt/arcsight'
  # arcsight::connector should be "file '$ERCOT_APPS/ArcSightSmartConnectors'
}
