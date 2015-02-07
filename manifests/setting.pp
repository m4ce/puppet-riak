define riak::setting ($setting = $title, $target = '/etc/riak/riak.conf', $value) {
  $regex_escaped_setting = regsubst($setting, '\.', '\\.', 'G')

  file_line {"riak_setting_${title}":
    path => $target,
    line => "${setting} = ${value}",
    match => "^ *${regex_escaped_setting} *=.*$",
    ensure => $value ? {
      "" => "absent",
      default => "present",
    },
    require => Package["riak"],
    notify => Service["riak"]
  }
}
