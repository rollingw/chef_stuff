#comment

package 'ntp' do
  action :install
end

package 'emacs'
package 'tree' do
  action :install
end

file '/etc/mot' do
  owner 'root'
  group 'root'
  content "This server is the property of ....
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['mhz']}
  MEMORY: #{node['memory']['total']}"
end

package 'git' do
  action :install
end

service 'ntpd' do
  action [:enable, :start]
end
