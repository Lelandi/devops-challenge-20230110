echo "1 - Install Vagrant"
echo "2 - Installing vagrant plugins... Please wait..."
vagrant plugin install vagrant-azure
vagrant plugin install vagrant-ssh-config
vagrant box add azure https://github.com/msopentech/vagrant-azure/raw/master/dummy.box
echo "git clone https://github.com/Lelandi/devops-challenge-20230110"
echo "Change personal connection info (VagrantFile and SSH keys)"
vagrant up control slave --provider=azure --no-parallel --provision
