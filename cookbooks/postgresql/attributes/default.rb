default['postgresql']['pg_hba'][{:comment => '# Optional comment',
:type => 'host', :db => 'all', :user => 'postgres', :addr => 192.168.10.100, :method => 'md5'}]
default['postgresql']['config']['listen_addresses'] = '*'
