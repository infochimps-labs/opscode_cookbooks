maintainer       "Opscode, Inc."
maintainer_email "cookbooks@opscode.com"
license          "Apache 2.0"
description      "Installs/Configures the Microsoft Web Platform Installer (WebPI)"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), VERSION))
supports         "windows"
depends          "windows", ">= 1.2.6"
