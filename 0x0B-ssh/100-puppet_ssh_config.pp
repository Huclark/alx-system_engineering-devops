include stdlib
# This puppet code updates the ssh configuration to 
# use the private key ~/.ssh/school without any authentication

file_line {'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/ssh/school',
  replace => true,
}

file_line {'Turn off password auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => true,
}
