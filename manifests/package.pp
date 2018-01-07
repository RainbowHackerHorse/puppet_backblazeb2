# Class: backblazeb2::package
#
#
class backblazeb2::package {
  if $facts['os']['family'] == 'FreeBSD' {
    package { 'b2':
      ensure => latest,
    }
  }
  elsif $facts['os']['family'] == 'Linux' {
    package { 'b2':
      ensure   => latest,
      provider => 'pip',
    }
    package { 'python-pip':
      ensure => latest,
      before => Package['b2'],
    }
  }
}