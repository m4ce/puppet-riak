class riak ($listener_http_internal, $listener_protobuf_internal, $listener_https_internal, $ensure, $enable) {
  include riak::install
  include riak::config
  include riak::service
}
