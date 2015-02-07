class riak::install {
  yumrepo {"basho":
    descr => "basho_riak",
    baseurl => "https://packagecloud.io/basho/riak/el/${::operatingsystemmajrelease}/\$basearch",
    gpgcheck => 0,
    enabled => 1
  }

  package {"riak":
    allow_virtual => false,
    ensure => "present",
    require => Yumrepo["basho"]
  }
}
