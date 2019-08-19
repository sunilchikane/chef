#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'httpd' do
#yum_package 'httpd' do
action :install
end 

service 'httpd' do
action [:enable ,:start]
end

template  '/var/www/html/index.html' do
source 'index.html.erb'
owner 'root'
group 'root'
mode '0644'
end

template '/etc/httpd/conf/httpd.conf' do
source 'default/httpd.conf.erb'
owner 'root'
group 'root'
mode '0644'
 variables({
            :ip => node['ipaddress'],
})
end

template '/etc/httpd/conf.d/virtualhost.conf' do 
source 'default/virtualhost.conf.erb'
owner 'root'
group 'root'
mode '0644'
 variables({
            :ip => node['ipaddress'],
})
end


