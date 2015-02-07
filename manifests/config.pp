class riak::config {
  riak::setting {
    "listener.http.internal":
      value => $::riak::listener_http_internal;

    "listener.https.internal":
      value => $::riak::listener_https_internal;

    "listener.protobuf.internal":
      value => $::riak::listener_protobuf_internal;

    "ssl.cacertfile":
      value => "${::riak::ssl_dir}/${::riak::ssl_cacert_file}"

    "ssl.certfile":
      value => "${::riak::ssl_dir}/${::riak::ssl_cert_file}"

    "ssl.keyfile":
      value => "${::riak::ssl_dir}/${::riak::ssl_key_file}"
  }
}
