Vagrant.configure("2") do |config|

  # Box Settings
    config.vm.box = "centos/7"

  # Defining Multiple Machines AND Provider Settings
    config.vm.define "bastion" do |db|
      db.vm.hostname = "bastion"
    end

    config.vm.provider "virtualbox" do |vb|
      vb.name = "bastion"
      vb.memory = "2048"
      vb.cpus = "2"
    end

  # Network Settings
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.network "public_network", ip: "192.168.15.100" #192.168.15.X Minha SubNet local.

  # Warmup / Init / Install VBoxGuestAdditions
  # Analisar https://copr.fedorainfracloud.org/coprs/g/cloud-init/el-stable/
    config.vm.provision "shell", path: "Warmup.sh"
   #config.vm.provision "shell", reboot: "1"

  # Folder Settings (Analisar erro falta VirtualBox Guest Additions)
    config.vm.synced_folder "shared_vm", "/tmp/shared_vm/"
end