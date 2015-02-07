class riak::config {
  Ini_setting {
    path => "/etc/riak/riak.conf",
    section => "",
    require => Package["riak"],
    notify => Service["riak"]
  }

  ini_setting {
    "riak_listener_http_internal":
      setting => "listener.http.internal",
      value => $::riak::listener_http_internal;

    "riak_listener_https_internal":
      setting => "listener.https.internal",
      value => $::riak::listener_https_internal;

    "riak_listener_protobuf_internal":
      setting => "listener.protobuf.internal",
      value => $::riak::listener_protobuf_internal
  }
}
