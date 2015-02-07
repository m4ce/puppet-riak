class riak ($listener_http_internal, $listener_protobuf_internal, $listener_https_internal, $ensure, $enable) {
  contain riak::install
  contain riak::config
  contain riak::service
}
