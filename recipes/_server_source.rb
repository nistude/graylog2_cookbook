# Install graylog2 server from source

remote_file "#{Chef::Config[:file_cache_path]}/graylog2-server-#{node['graylog2']['server']['version']}.tar.gz" do
  source "https://github.com/downloads/Graylog2/graylog2-server/graylog2-server-#{node['graylog2']['server']['version']}.tar.gz"
  mode "0444"
  action :create_if_missing
end

directory "#{node['graylog2']['prefix']}/graylog2-server-#{node['graylog2']['server']['version']}" do
  owner node['graylog2']['user']
  group node['graylog2']['group']
  mode "0755"
end

execute "extract graylog2 server" do
  command "tar xzf #{Chef::Config[:file_cache_path]}/graylog2-server-#{node['graylog2']['server']['version']}.tar.gz -C #{node['graylog2']['prefix']}"
  user node['graylog2']['user']
  group node['graylog2']['group']
  creates "#{node['graylog2']['prefix']}/graylog2-server-#{node['graylog2']['server']['version']}/build_date"
end
