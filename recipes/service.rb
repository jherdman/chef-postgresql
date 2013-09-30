#
# Cookbook Name:: postgresql
# Recipe:: service
#

file "/usr/sbin/policy-rc.d" do
  action :delete
end

# FIXME Hack hack hack... https://github.com/phlipper/chef-postgresql/issues/52
directory "/var/run/postgresql" do
  owner "postgres"
  group "postgres"
  mode 2775
  action :create
end

# define the service
service "postgresql" do
  supports restart: true
  action [:enable, :start]
end
