maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures app-deploy"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

supports "ubuntu"

depends "nodejs", "~> 1.0.1"
depends "git", "~> 2.0.0"
depends "runit", "~> 0.16.0" 