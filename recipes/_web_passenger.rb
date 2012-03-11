# Setup additional resources

directory "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/tmp" do
  owner node['graylog2']['user']
  group node['graylog2']['group']
  mode "0755"
end

execute "restart passenger" do
  command "touch #{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/tmp/restart.txt"
  action :nothing
end
