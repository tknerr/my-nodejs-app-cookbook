
#
# 
#
Vagrant::Config.run do |config|
  
  config.vm.box = "opscode-ubuntu-12.04"

  config.vm.define :nodejs do | nodejs_config |
    nodejs_config.vm.customize ["modifyvm", :id, "--name", 
      "Demo 1 - nodejs (OOP 2013)" ] 
    nodejs_config.vm.host_name = "nodejs.local"
    nodejs_config.vm.network :hostonly, "33.33.13.11"

    nodejs_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = [ 'cookbooks' ]
      chef.run_list = [ 
        "recipe[nodejs::default]" 
      ]
    end

  end

end
