maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Disables apparmor service on Ubuntu"
version          IO.read(File.join(File.dirname(__FILE__), VERSION))
supports          "ubuntu"
recipe            "default", "Disables apparmor service on Ubuntu"
