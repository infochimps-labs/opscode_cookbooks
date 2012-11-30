maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs and configures nscd"
version          IO.read(File.join(File.dirname(__FILE__), VERSION))
suggests          "openldap"

recipe "nscd", "Installs and configures nscd"

%w{ redhat centos debian ubuntu }.each do |os|
  supports os
end
