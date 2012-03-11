# Set passenger version
# might be needed to synchronize passenger versions between multiple projects

execute "set passenger version for graylog2 web interface" do
  cwd "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}"
  command "perl -pi -e 's/passenger \\(3.0.10\\)/passenger (#{node['passenger_nginx']['version']})/' Gemfile.lock"
  action :nothing
  subscribes :run, resources(:execute => "extract graylog2 web interface"), :immediately
end
