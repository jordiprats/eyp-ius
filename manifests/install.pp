class ius::install inherits ius {

  if($ius::manage_package)
  {
    package { $ius::params::package_name:
      ensure => $ius::package_ensure,
    }
  }

}
