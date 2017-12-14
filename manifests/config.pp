class ius::config inherits ius {

  #
  # IUS
  #

  yumrepo { 'ius':
    enabled => $ius::enable_repo_ius,
    target  => '/etc/yum.repos.d/ius.repo',
  }

  yumrepo { 'ius-debuginfo':
    enabled => $ius::enable_repo_ius_debug,
    target  => '/etc/yum.repos.d/ius.repo',
  }

  yumrepo { 'ius-source':
    enabled => $ius::enable_repo_ius_source,
    target  => '/etc/yum.repos.d/ius.repo',
  }

  #
  # IUS-DEV
  #

  yumrepo { 'ius-dev':
    enabled => $ius::enable_repo_ius_dev,
    target  => '/etc/yum.repos.d/ius-dev.repo',
  }

  yumrepo { 'ius-dev-debuginfo':
    enabled => $ius::enable_repo_ius_dev_debug,
    target  => '/etc/yum.repos.d/ius-dev.repo',
  }

  yumrepo { 'ius-dev-source':
    enabled => $ius::enable_repo_ius_dev_source,
    target  => '/etc/yum.repos.d/ius-dev.repo',
  }

  #
  # IUS-TESTING
  #

  yumrepo { 'ius-testing':
    enabled => $ius::enable_repo_ius_testing,
    target  => '/etc/yum.repos.d/ius-testing.repo',
  }

  yumrepo { 'ius-testing-debuginfo':
    enabled => $ius::enable_repo_ius_testing_debug,
    target  => '/etc/yum.repos.d/ius-testing.repo',
  }

  yumrepo { 'ius-testing-source':
    enabled => $ius::enable_repo_ius_testing_source,
    target  => '/etc/yum.repos.d/ius-testing.repo',
  }

}
