#
# Cookbook Name:: postgresql
# Recipe:: doc
#

include_recipe "postgresql"

package "postgresql-doc-#{node["postgresql"]["version"]}" do
  action :"#{node["postgresql"]["version_action"]}"
end
