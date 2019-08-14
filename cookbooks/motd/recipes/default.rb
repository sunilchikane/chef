template   '/etc/motd' do
  source 'default/motd.erb'
  owner 'root'
  group 'root'
  mode '0644'
 variables({
	:hostname => node['fqdn'],
	:ip => node['ipaddress'],
})
end
