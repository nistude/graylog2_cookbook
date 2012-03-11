# Install system user

user node['graylog2']['user'] do
  comment 'Graylog2 user'
  gid node['graylog2']['group']
  shell '/bin/false'
  system true
end
