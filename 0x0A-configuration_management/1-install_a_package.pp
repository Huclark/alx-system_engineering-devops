# Ensure python3.8 is installed
package { 'python3.8':
  ensure => 'installed',
}

# Install flask from pip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
