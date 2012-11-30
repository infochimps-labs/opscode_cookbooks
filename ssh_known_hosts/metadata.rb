maintainer        "Scott M. Likens"
maintainer_email  "scott@likens.us"
license           "Apache 2.0"
description       "Dyanmically generates /etc/ssh/known_hosts based on search indexes"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), VERSION))
recipe            "ssh_known_hosts", "Dyanmically generates /etc/ssh/known_hosts based on search indexes"
