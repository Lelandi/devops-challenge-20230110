#/bin/sh
cp /vagrant/.ssh/id_rsa /home/vagrant/.ssh/
sudo yum -y install epel-release
echo "-----------------------------"
echo "Installing Ansible. Hold On..."
echo "-----------------------------"
sudo yum -y install ansible
ansible-galaxy collection install community.general
echo "-----------------------------"
echo "Modifying Hosts with VM Ip..."
echo "-----------------------------"
sudo -u vagrant cat <<EOT >> /etc/hosts
127.0.0.1 control-node control-node
10.0.0.5 control-node
10.0.0.4 app01-coodesh
EOT
cat <<EOT >> /etc/ansible/hosts
[apps]
10.0.0.4
EOT
#Disabling SSH check
sudo sed -i '/host_key_che/ s/#//' /etc/ansible/ansible.cfg
sudo sed -i '/command_warnings/ s/# //' /etc/ansible/ansible.cfg
echo "-----------------------------"
echo "   PROVISION.SH COMPLETED    "
echo "-----------------------------"
sudo -u vagrant ssh-keyscan -H app01-coodesh >> /home/vagrant/.ssh/known_hosts
sudo -u vagrant ssh -y app01-coodesh 
sudo -u vagrant ansible-playbook /vagrant/playbooks/app.yml

