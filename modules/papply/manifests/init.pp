class papply {
  file { '/usr/local/bin/papply':
    source => 'puppet:///modules/papply/papply.sh',
    mode   => '0755',
  }

  file { '/usr/local/bin/pull-updates':
    source => 'puppet:///modules/papply/pull-updates.sh',
    mode   => '0755',
  }

  file { '/home/vagrant/.ssh/id_rsa':
    source => 'puppet:///modules/papply/vagrant.priv',
    owner  => 'vagrant',
    mode   => '0600',  
  }

  cron { 'run-puppet':
    ensure  => present,
    user    => 'vagrant',
    command => '/usr/local/bin/pull-updates',
    minute  => '*',
    hour    => '*',
  }
}
