# Class: b2::cron
#
#
class backblazeb2::cron {
  cron { 'b2_dump':
    command  => 'backblaze sync $folder b2://$bucketname',
    user     => 'b2',
    month    => '*',
    monthday => '*',
    hour     => '2',
    minute   => '*',
  }
}