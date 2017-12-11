class ius (
            $package_ensure                 = 'installed',
            $import_gpgkey                  = true,
            $enable_repo_ius                = true,
            $enable_repo_ius_debug          = false,
            $enable_repo_ius_source         = false,
            $enable_repo_ius_dev            = false,
            $enable_repo_ius_dev_debug      = false,
            $enable_repo_ius_dev_source     = false,
            $enable_repo_ius_testing        = false,
            $enable_repo_ius_testing_debug  = false,
            $enable_repo_ius_testing_source = false,
          ) inherits ius::params{

  validate_re($package_ensure, [ '^present$', '^installed$', '^absent$', '^purged$', '^held$', '^latest$' ], 'Not a supported package_ensure: present/absent/purged/held/latest')

  class { '::ius::install': } ->
  class { '::ius::config': } ->
  Class['::ius']

}
