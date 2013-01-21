# Install required web interface dependencies

package "build-essential"

gem_package "bundler"
gem_package "rake"

execute "bundle install" do
  cwd "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}"
  action :nothing
  subscribes :run, "execute[set passenger version for graylog2 web interface]"
end
