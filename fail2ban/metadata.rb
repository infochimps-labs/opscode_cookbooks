maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs and configures fail2ban"
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

recipe "fail2ban", "Installs and configures fail2ban"

%w{ ubuntu debian }.each do |os|
  supports os
end
