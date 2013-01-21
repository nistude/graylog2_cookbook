# Install server configuration

template "/etc/graylog2.conf" do
  group node['graylog2']['group']
  owner node['graylog2']['user']
  mode "0440"
  notifies :restart, "service[graylog2-server]"
end
