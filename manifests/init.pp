class riak ($listener_http_internal, $listener_protobuf_internal, $listener_https_internal, $ssl_cacert_file, $ssl_cert_file, $ssl_key_file, $ensure, $enable) {
  include riak::install
  include riak::config
  include riak::service
}
