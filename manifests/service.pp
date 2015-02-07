class riak::service {
  service {"riak":
    enable => $::riak::enable,
    ensure => $::riak::ensure
  }
}
