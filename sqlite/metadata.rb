maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs sqlite"
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

recipe "sqlite", "Installs sqlite"

%w{ubuntu debian}.each do |os|
  supports os
end
