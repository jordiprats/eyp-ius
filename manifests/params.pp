class ius::params {

  # https://rhel5.iuscommunity.org/ius-release.rpm
  # https://rhel6.iuscommunity.org/ius-release.rpm
  # https://rhel7.iuscommunity.org/ius-release.rpm
  # https://centos5.iuscommunity.org/ius-release.rpm
  # https://centos6.iuscommunity.org/ius-release.rpm
  # https://centos7.iuscommunity.org/ius-release.rpm

  case $::osfamily
  {
    'redhat':
    {
      case $::operatingsystemrelease
      {
        /^5.*$/:
        {
          $package_name='ius'
        }
        /^6.*$/:
        {
          $package_name='ius'
        }
        /^7.*$/:
        {
          $package_name='ius'
        }
        default: { fail("Unsupported RHEL/CentOS version! - ${::operatingsystemrelease}")  }
      }
    }
    default: { fail('Unsupported OS!')  }
  }
}
