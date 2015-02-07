class riak::install {
  yumrepo {"basho":
    baseurl => "https://packagecloud.io/basho/riak/el/${::operatingsystemmajrelease}/\$basearch",
    gpgcheck => 0,
    enabled => 1
  }

  package {"riak":
    ensure => "present",
    require => Yumrepo["basho"]
  }
}
