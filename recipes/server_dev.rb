#
# Cookbook Name:: postgresql
# Recipe:: server_dev
#

include_recipe "postgresql"

# install the package
package "postgresql-server-dev-#{node["postgresql"]["version"]}" do
  action :"#{node["postgresql"]["version_action"]}"
end
