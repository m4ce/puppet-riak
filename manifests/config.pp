class riak::config {
  riak::setting {
    "listener.http.internal":
      value => $::riak::listener_http_internal;

    "listener.https.internal":
      value => $::riak::listener_https_internal;

    "riak.listener.protobuf.internal":
      value => $::riak::listener_protobuf_internal
  }
}
