maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs man-db"
version          IO.read(File.join(File.dirname(__FILE__), VERSION))

recipe "man", "Installs man package"

%w{ debian ubuntu redhat centos fedora}.each do |os|
  supports os
end
