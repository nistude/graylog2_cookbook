# Install web interface from source

remote_file "#{Chef::Config[:file_cache_path]}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}.tar.gz" do
  source "https://github.com/downloads/Graylog2/graylog2-web-interface/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}.tar.gz"
  mode "0444"
  action :create_if_missing
end

directory "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}" do
  owner node['graylog2']['user']
  group node['graylog2']['group']
  mode "0755"
end

execute "extract graylog2 web interface" do
  command "tar xzf #{Chef::Config[:file_cache_path]}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}.tar.gz -C #{node['graylog2']['prefix']}"
  user node['graylog2']['user']
  group node['graylog2']['group']
  creates "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/build_date"
end

directory "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/log" do
  owner node['graylog2']['user']
  group node['graylog2']['group']
  mode "0755"
end

file "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/log/production.log" do
  content ""
  owner node['graylog2']['user']
  group node['graylog2']['group']
  mode "0644"
  action :create_if_missing
end
