class puppet_docker::riak {
  contain puppet_docket::riak::install
  contain puppet_docket::riak::config
  contain puppet_docket::riak::service
}
