# Setup the graylog2 web interface

include_recipe "graylog2::_group"
include_recipe "graylog2::_user"
include_recipe "graylog2::_web_source"
include_recipe "graylog2::_web_set_passenger"
include_recipe "graylog2::_web_dependencies"
include_recipe "graylog2::_web_passenger"
include_recipe "graylog2::_web_config"
include_recipe "graylog2::_web_cronjobs"

include_recipe "passenger_nginx"
