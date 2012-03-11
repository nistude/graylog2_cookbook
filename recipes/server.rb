# Compose standard graylog2 server component

include_recipe "graylog2::_group"
include_recipe "graylog2::_user"
include_recipe "graylog2::_server_dependencies"
include_recipe "graylog2::_server_source"
include_recipe "graylog2::_server_runit"
include_recipe "graylog2::_server_config"
