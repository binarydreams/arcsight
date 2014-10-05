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
    gid => 8843,
  }
    
  user { "arcsight" :
    ensure => present,
    uid => 8843,
    managehome => true,
    shell => '/bin/bash',
    expiry => 'absent',
    gid => 'arcsight',
    password => '!!'
  }
  
  # Only for arcsight::esm file { '/opt/arcsight'
  # arcsight::connector should be "file '$ERCOT_APPS/ArcSightSmartConnectors'
}
