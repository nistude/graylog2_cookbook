maintainer        "Nikolay Sturm"
maintainer_email  "opscode@erisiandiscord.de"
license           "Apache 2.0"
description       "Graylog2 log management and exception tracking"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.2"

depends "elasticsearch"
depends "java"
depends "mongodb"
depends "nginx"
depends "passenger_nginx"
depends "runit"
