#comment

package 'ntp' do
  action :install
end

package 'emacs'
package 'tree' do
  action :install
end

template '/etc/motd' do
  source 'motd.erb'
  action :create
end

package 'git' do
  action :install
end

service 'ntpd' do
  action [:enable, :start]
end
