class ius::config inherits ius {

  #
  # IUS
  #

  yumrepo { 'ius':
    enable => $ius::enable_repo_ius,
  }

  yumrepo { 'ius-debuginfo':
    enable => $ius::enable_repo_ius_debug,
  }

  yumrepo { 'ius-source':
    enable => $ius::enable_repo_ius_source,
  }

  #
  # IUS-DEV
  #

  yumrepo { 'ius-dev':
    enable => $ius::enable_repo_ius_dev,
  }

  yumrepo { 'ius-dev-debuginfo':
    enable => $ius::enable_repo_ius_dev_debug,
  }

  yumrepo { 'ius-dev-source':
    enable => $ius::enable_repo_ius_dev_source,
  }

  #
  # IUS-TESTING
  #

  yumrepo { 'ius-testing':
    enable => $ius::enable_repo_ius_testing,
  }

  yumrepo { 'ius-testing-debuginfo':
    enable => $ius::enable_repo_ius_testing_debug,
  }

  yumrepo { 'ius-testing-source':
    enable => $ius::enable_repo_ius_testing_source,
  }

}
