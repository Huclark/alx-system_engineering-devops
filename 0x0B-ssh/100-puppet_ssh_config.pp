# This puppet code updates the ssh configuration to 
# use the private key ~/.ssh/school without any authentication

file { '/etc/ssh/ssh_config':
  ensure  => 'present',
  content => 'IdentityFile ~/.ssh/school\nPasswordAuthentication no\n'
}
