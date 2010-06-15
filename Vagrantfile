Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. For a detailed explanation
  # and listing of configuration options, please view the documentation
  # online.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "base"
  
  config.vm.provisioner = :chef_solo
  config.chef.cookbooks_path = "cookbooks"
  # only if you enable mysql server
  # config.chef.json.merge!({
  #     :mysql => {
  #         :server_root_password => "root"
  #     }
  # })
  config.vm.forward_port("web", 80, 8080)
end
