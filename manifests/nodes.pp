node 'puppet' {
  file { '/tmp/hello':
    content => "Hello, world!\n",
  }
}
