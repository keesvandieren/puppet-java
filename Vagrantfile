# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::configure("2") do |config|
    
    config.ssh.forward_agent
    
    config.vm.define :jpuppet_java_precise64 do |cfg|
        cfg.vm.box = 'precise64'
        cfg.vm.box_url = 'http://files.vagrantup.com/precise64.box'
    end
    
    config.vm.define :jpuppet_java_trusty64 do |cfg|
        cfg.vm.box = 'trusty64'
        cfg.vm.box_url = 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'
    end
    
    config.vm.define :jpuppet_java_sles11_64 do |cfg|
        cfg.vm.box = 'sles11_64'
        cfg.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/sles-11sp1-x64-vbox4210.box'
    end
    
    config.vm.define :jpuppet_java_fedora17_64 do |cfg|
        cfg.vm.box = 'fedora17_64'
        cfg.vm.box_url = 'http://dl.dropbox.com/u/6002490/vagrant/beefymiracle64.box'
    end
    
    config.vm.define :jpuppet_java_fedora18_64 do |cfg|
        cfg.vm.box = 'fedora18_64'
        cfg.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/fedora-18-x64-vbox4210.box'
    end
    
    config.vm.define :jpuppet_java_centos_6_4_64 do |cfg|
        cfg.vm.box = 'centos_6_4_64'
        cfg.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box'
    end
    
    config.vm.define :jpuppet_java_centos_5_9_64 do |cfg|
        cfg.vm.box = 'centos_5_9_64'
        cfg.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/centos-59-x64-vbox4210.box'
    end
    
    config.vm.define :jpuppet_java_squeeze64 do |cfg|
        cfg.vm.box = 'squeeze64'
        cfg.vm.box_url = 'http://dl.dropbox.com/u/937870/VMs/squeeze64.box'
    end
    
    config.vm.define :jpuppet_java_centos63_64 do |cfg|
        cfg.vm.box = 'centos63_64'
        cfg.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/centos-63-x64.box'
    end
    
    config.vm.define :jpuppet_java_gentoo64 do |cfg|
        cfg.vm.box = 'gentoo64'
        cfg.vm.box_url = 'http://dl.dropbox.com/u/1212791/gentoo-64-i686-3.3.8.box'
    end
    
    config.vm.define :jpuppet_java_archlinux64 do |cfg|
        cfg.vm.box = 'archlinux64'
        cfg.vm.box_url = 'http://vagrant.pouss.in/archlinux_2012-07-02.box'
    end
    
    config.vm.define :jpuppet_java_opensuse_12_1_64 do |cfg|
        cfg.vm.box = 'opensuse_12_1_64'
        cfg.vm.box_url = 'https://github.com/jtperry/OpenSuseVagrantBox'
    end
    
    config.vm.provision :puppet do |puppet|
        puppet.module_path = [ "manifests", "modules" ]
        #puppet.options = "--verbose --debug"
    end
    
    config.vm.provider :virtualbox do |v, override|
        v.customize ["modifyvm", :id, "--memory", 1024]
        v.customize ["modifyvm", :id, "--cpus", 1]
        v.customize ["modifyvm", :id, "--hwvirtex", "on"]
        v.customize ["modifyvm", :id, "--nestedpaging", "on"]
    end
    
end
