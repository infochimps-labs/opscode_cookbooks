maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs rsync"
version          IO.read(File.join(File.dirname(__FILE__), VERSION))

recipe "rsync", "Installs rsync"

%w{ centos fedora redhat ubuntu debian }.each do |os|
  supports os
end
