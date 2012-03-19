default['graylog2']['server']['version'] = '0.9.6'
default['graylog2']['web_interface']['version'] = '0.9.6'

default['graylog2']['prefix'] = '/opt'

default['graylog2']['group'] = 'graylog2'
default['graylog2']['user'] = 'graylog2'
# graylog2 server will run as [syslog][user] (s.b.) as it might need privileges
# to open syslog port

# standard configuration options
# see templates/default/graylog2.conf.erb for explanations
default['graylog2']['amqp']['enabled'] = 'false'
default['graylog2']['amqp']['host'] = 'localhost'
default['graylog2']['amqp']['port'] = 5672
default['graylog2']['amqp']['user'] = 'graylog2'
default['graylog2']['amqp']['password'] = 'secret'
default['graylog2']['amqp']['virtualhost'] = '/'
default['graylog2']['amqp']['subscribed_queues'] = ['queue1:gelf', 'queue2:syslog']

# 'smtp' or 'sendmail'
default['graylog2']['email']['transport'] = 'smtp'
# further email settings are only relevant for 'smtp' transport
default['graylog2']['email']['domain'] = 'example.org'
default['graylog2']['email']['enable_starttls_auto'] = 'true'
default['graylog2']['email']['port'] = 25
default['graylog2']['email']['relay'] = 'smtp.example.org'
# 'plain', 'login', 'cram_md5', use false to disable
default['graylog2']['email']['smtpauth']['type'] = 'plain'
default['graylog2']['email']['smtpauth']['user'] = 'somebody'
default['graylog2']['email']['smtpauth']['password'] = 'secret'

default['graylog2']['elasticsearch']['url'] = 'http://localhost:9200/'

default['graylog2']['gelf']['use'] = 'true'
default['graylog2']['gelf']['listen_address'] = '0.0.0.0'
default['graylog2']['gelf']['listen_port'] = 12201

default['graylog2']['loggly']['forwarder_timeout'] = 3

default['graylog2']['mongodb']['host'] = '127.0.0.1'
default['graylog2']['mongodb']['port'] = 27017
default['graylog2']['mongodb']['database'] = 'graylog2'
default['graylog2']['mongodb']['useauth'] = 'false'
default['graylog2']['mongodb']['user'] = 'graylog2'
default['graylog2']['mongodb']['password'] = 'secret'
default['graylog2']['mongodb']['max_connections'] = 100
default['graylog2']['mongodb']['threads_allowed_to_block_multiplier'] = 5

default['graylog2']['mq_batch_size'] = 4000
default['graylog2']['mq_max_size'] = 0
default['graylog2']['mq_poll_freq'] = 1

default['graylog2']['syslog']['force_rdns'] = 'false'
default['graylog2']['syslog']['port'] = 514
default['graylog2']['syslog']['protocol'] = 'udp'
default['graylog2']['syslog']['user'] = 'root'

default['graylog2']['web_interface']['allow_deleting'] = 'false'
default['graylog2']['web_interface']['allow_version_check'] = 'false'
default['graylog2']['web_interface']['date_format'] = '%d.%m.%Y - %H:%M:%S'
default['graylog2']['web_interface']['hoptoad']['api_key'] = '123'
default['graylog2']['web_interface']['hoptoad']['enable'] = 'false'
default['graylog2']['web_interface']['hoptoad']['ssl'] = 'false'
default['graylog2']['web_interface']['streamalarms']['cron_minute'] = '*/15'
default['graylog2']['web_interface']['streamalarms']['enable'] = 'true'
default['graylog2']['web_interface']['streamalarms']['from'] = 'graylog2alarms@example.org'
default['graylog2']['web_interface']['subscriptions']['cron_minute'] = '*/15'
default['graylog2']['web_interface']['subscriptions']['enable'] = 'true'
default['graylog2']['web_interface']['subscriptions']['from'] = 'graylog2subscriptions@example.org'
default['graylog2']['web_interface']['use_passenger'] = '3.0.11'
