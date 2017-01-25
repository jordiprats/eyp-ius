class ius::service inherits ius {

  #
  validate_bool($ius::manage_docker_service)
  validate_bool($ius::manage_service)
  validate_bool($ius::service_enable)

  validate_re($ius::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${ius::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $ius::manage_docker_service)
  {
    if($ius::manage_service)
    {
      service { $ius::params::service_name:
        ensure => $ius::service_ensure,
        enable => $ius::service_enable,
      }
    }
  }
}
