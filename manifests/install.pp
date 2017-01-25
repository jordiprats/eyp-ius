class ius::install inherits ius {

  if($ius::manage_package)
  {
    include ::epel

    package { $ius::params::package_name:
      ensure   => $ius::package_ensure,
      provider => $ius::params::package_provider,
      source   => $ius::params::package_source,
      require  => Class['::epel'],
    }
  }

}
