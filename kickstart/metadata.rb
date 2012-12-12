maintainer       "Opscode"
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Creates apache2 vhost and serves a kickstart file."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))
depends "apache2"
supports "redhat"
supports "centos"
recipe "kickstart", "Empty, use one of the other recipes"
recipe "kickstart::server", "Sets up kickstart as an apache vhost"
