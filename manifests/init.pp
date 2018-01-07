# Class: backblazeb2
# Backblaze Module for FreeBSD
#
class backblazeb2 {
  require backblazeb2::package
  include backblazeb2::cron
  user { 'b2':
    ensure  => present,
    comment => 'b2 Backblaze Backup User',
    home    => '/home/b2',
    shell   => '/bin/sh',
    groups  => ['b2'],
    require => [Group['b2']],
  }

  group { 'b2':
    ensure => present,
  }

  file { '/home/b2':
    ensure => directory,
    owner  => 'b2',
    group  => 'b2',
    mode   => '0644',
  }
  file { '/var/log/b2':
    ensure => directory,
    owner  => 'b2',
    group  => 'b2',
    mode   => '0644',
  }
}