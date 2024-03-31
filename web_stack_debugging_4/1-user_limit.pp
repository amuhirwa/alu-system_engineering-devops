# Increase open files limit for holberton user

exec { 'replace holberton users open files limits':
  path    => '/usr/bin:/usr/sbin:/bin',
  command => 'sed -i "/s/nofile ./nofile 4096/" /etc/security/limits.conf',
}
