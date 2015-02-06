class riak::service {
  service {"riak":
    enable => true,
    ensure => "running",
    require => Package["riak"]
  }
}
