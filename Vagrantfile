Vagrant.configure("2") do |config|

  config.vm.box = "cloud-image/debian-13"
  config.vm.box_version = "20260413.2447.0"

  config.vm.define "loginS" do |server|
    server.vm.hostname = "loginS"
    server.vm.network "private_network", ip: "192.168.56.110"

    server.vm.provider "virtualbox" do |vb|
      vb.name = "loginS"
      vb.memory = 512
      vb.cpus = 1
    end

    server.vm.provision "shell", path: "server.sh"
  end

  config.vm.define "loginSW" do |worker|
    worker.vm.hostname = "loginSW"
    worker.vm.network "private_network", ip: "192.168.56.111"

    worker.vm.provider "virtualbox" do |vb|
      vb.name = "loginSW"
      vb.memory = 512
      vb.cpus = 1
    end

    worker.vm.provision "shell", path: "worker.sh"
  end

end
