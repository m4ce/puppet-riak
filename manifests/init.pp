class riak ($ensure, $enable) {
  contain riak::install
  contain riak::config
  contain riak::service
}
