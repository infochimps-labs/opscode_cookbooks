maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs but does not configure heartbeat"
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

recipe "heartbeat", "Installs, but does not configure, heartbeat"

%w{ debian ubuntu }.each do |os|
  supports os
end
