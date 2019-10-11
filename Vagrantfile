Vagrant.configure(2) do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.box = "jborean93/WindowsServer2019"
  config.vm.hostname = "windows"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbooks/vagrant.yml"
    ansible.limit = "all"
    ansible.verbose = "-vv"
    ansible.compatibility_mode = "2.0"
    ansible.host_vars = {
      "default" => {
        "ansible_host" => "127.0.0.1",
        "ansible_user" => "vagrant",
        "ansible_password" => "vagrant",
        "ansible_connection" => "winrm",
        "ansible_port" => 55986,
        "ansible_winrm_transport" => "basic",
        "ansible_winrm_server_cert_validation" => "ignore"
      }
    }
  end
end