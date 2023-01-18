#/bin/sh
sudo yum -y install epel-release
echo "Instalando Ansible. Aguarde..."
sudo yum -y install ansible
ansible-galaxy collection install community.general
cat <<EOT >> /etc/hosts
10.0.0.4 control-node
10.0.0.5 app01-coodesh
EOT
cat <<EOT >> /etc/ansible/hosts
[apps]
10.0.0.5
EOT
