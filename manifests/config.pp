class ius::config inherits ius {

  #
  # IUS
  #

  yumrepo { 'ius':
    enabled => $ius::enable_repo_ius,
  }

  yumrepo { 'ius-debuginfo':
    enabled => $ius::enable_repo_ius_debug,
  }

  yumrepo { 'ius-source':
    enabled => $ius::enable_repo_ius_source,
  }

  #
  # IUS-DEV
  #

  yumrepo { 'ius-dev':
    enabled => $ius::enable_repo_ius_dev,
  }

  yumrepo { 'ius-dev-debuginfo':
    enabled => $ius::enable_repo_ius_dev_debug,
  }

  yumrepo { 'ius-dev-source':
    enabled => $ius::enable_repo_ius_dev_source,
  }

  #
  # IUS-TESTING
  #

  yumrepo { 'ius-testing':
    enabled => $ius::enable_repo_ius_testing,
  }

  yumrepo { 'ius-testing-debuginfo':
    enabled => $ius::enable_repo_ius_testing_debug,
  }

  yumrepo { 'ius-testing-source':
    enabled => $ius::enable_repo_ius_testing_source,
  }

}
