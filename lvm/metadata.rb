maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs lvm2 package"
version          IO.read(File.join(File.dirname(__FILE__), VERSION))

recipe "lvm", "Installs lvm2 package"

%w{ redhat centos debian ubuntu }.each do |os|
  supports os
end
