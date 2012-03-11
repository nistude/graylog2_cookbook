# Install cron jobs

streamalarm_action = :create
if node['graylog2']['web_interface']['streamalarms']['enable'] == 'false'
  streamalarm_action = :delete
end

cron "send graylog2 stream alarms" do
  minute node['graylog2']['web_interface']['streamalarms']['cron_minute']
  action streamalarm_action
  command "cd #{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']} && RAILS_ENV=production bundle exec rake streamalarms:send | grep -v 'All done'"
  path "/bin:/usr/bin:/usr/local/bin"
end

subscription_action = :create
if node['graylog2']['web_interface']['subscriptions']['enable'] = 'false'
  streamsubscription_action = :delete
end

cron "send graylog2 stream subscriptions" do
  minute node['graylog2']['web_interface']['subscriptions']['cron_minute']
  action subscription_action
  command "cd #{node['graylog2']['prefix']}/graylog2-web-interface-#{node['graylog2']['web_interface']['version']} && RAILS_ENV=production bundle exec rake subscriptions:send | grep -v 'All done'"
  path "/bin:/usr/bin:/usr/local/bin"
end
