# Increase open files limit

exec { 'Increase limit':
  onlyif  => 'test -e /etc/default/nginx',
  command => 'sed -i "5s/[0-9]\+/4096/" /etc/default/nginx; service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  }
