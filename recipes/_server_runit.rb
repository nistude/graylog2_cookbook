# setup runit service for graylog2 server

include_recipe "runit"

runit_service "graylog2-server"
