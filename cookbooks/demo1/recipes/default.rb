#
# Cookbook:: demo
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file  '/etc/test_sunil' do
content 'First Demo is run successfully'
owner 'root'
group 'root'
mode '0622'
end
