maintainer       "Cybercom"
maintainer_email "tobias.lidskog@cybercom.com"
license          "Apache 2.0"
description      "Installs/Configures maven3"
long_description IO.read(File.join(File.dirname(__FILE__), 'README'))
version          "0.3.0"

%w{ java jpackage }.each do |cb|
  depends cb
end

%w{ debian ubuntu }.each do |os|
  supports os
end

recipe "maven3::default", "Installs and configures Maven 3"
