# ius

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What ius affects](#what-ius-affects)
    * [Beginning with ius](#beginning-with-ius)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

setup Inline with Upstream Stable (**IUS**) repository

## Module Description

This module enables the [IUS](https://ius.io/) repository for RHEL and CentOS 5/6/7

## Setup

### What ius affects

* Manages a package called ius-release

### Beginning with ius

Inlcude ius class to install ius repository

```puppet
class { '::ius': }
```

## Usage

We can also use this module to ensure IUS' absence:

```puppet
class { '::ius':
  ensure => 'absent',
}
```

## Reference

### ius

* **package_ensure**: package status (default: 'installed')

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

* be able to manage **yum.repos.d** files

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
