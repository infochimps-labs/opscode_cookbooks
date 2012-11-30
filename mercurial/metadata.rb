maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs mercurial"
version          IO.read(File.join(File.dirname(__FILE__), VERSION))

recipe "mercurial", "Installs mercurial"

%w{ debian ubuntu }.each do |os|
  supports os
end
