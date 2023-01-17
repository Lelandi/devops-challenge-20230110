#/bin/sh
sudo yum -y install epel-release
echo "Instalando Ansible. Aguarde..."
sudo yum -y install ansible
ansible-galaxy collection install community.general
cat <<EOT >> /etc/hosts
192.168.2.2 control-node
192.168.2.3 app01
EOT
