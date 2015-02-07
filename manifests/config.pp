class riak::config {
  # TODO: best would be to use file_line to manage this file
  file {"/etc/riak/riak.conf":
    owner => "riak",
    group => "riak",
    mode => "0644",
    content => template("riak/riak.conf.erb"),
    notify => Service["riak"]
  }
}
