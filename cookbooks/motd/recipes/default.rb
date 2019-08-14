template   '/etc/motd' do
  source 'default/motd.erb'
  owner 'root'
  group 'root'
  mode '0644'
 variables({
	:hostname => node['hostname'],
	:ipaddress => node['ipaddress']
})
end
