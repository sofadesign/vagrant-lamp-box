require_recipe "apt"
require_recipe "apache2"
#require_recipe "mysql::server"
require_recipe "php::php5"
require_recipe "php::module_sqlite3"
require_recipe "sqlite"

execute "disable-default-site" do
  command "sudo a2dissite default"
  notifies :restart, resources(:service => "apache2")
end

web_app "application" do
  template "application.conf.erb"
  notifies :restart, resources(:services => "apache2")
end