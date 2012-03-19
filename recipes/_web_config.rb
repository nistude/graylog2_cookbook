# Install web interface configuration

template "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/config/email.yml" do
  owner node['graylog2']['user']
  group node['graylog2']['group']
  mode "0644"
end

public_hostname = node['fqdn']
if node['ec2']
  public_hostname = node['ec2']['public_hostname']
end

template "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/config/general.yml" do
  owner node['graylog2']['user']
  group node['graylog2']['group']
  mode "0644"
  variables(
    :public_hostname => public_hostname
  )

  notifies :run, resources(:execute => "restart passenger")
end

template "#{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']}/config/mongoid.yml" do
  owner node['graylog2']['user']
  group node['graylog2']['group']
  mode "0400"

  notifies :run, resources(:execute => "restart passenger")
end

