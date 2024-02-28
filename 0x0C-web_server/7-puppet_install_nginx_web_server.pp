# A puppet manifest which configures a Ubuntu machine to install and
# configure a Nginx server

package { 'nginx':
  ensure => 'present',
}

exec { 'install':
  command  => 'sudo apt -y update ; sudo apt -y install nginx',
  provider => shell,
}

exec { 'Hello':
  command  => "echo 'Hello World!' | sudo tee /var/www/html/index.html",
  provider => shell,
}

exec { 'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https:\/\/github.com\/tami-cp0\/;\\n\\t}/" /etc/nginx/sites-available/default':
  provider => shell,
}

exec { 'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
