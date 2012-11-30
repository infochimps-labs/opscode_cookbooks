maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs screen"
version          IO.read(File.join(File.dirname(__FILE__), VERSION))

recipe "screen", "Installs screen"

%w{ redhat centos fedora ubuntu debian }.each do |os|
  supports os
end
