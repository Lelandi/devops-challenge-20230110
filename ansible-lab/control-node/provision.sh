#/bin/sh
## Criar Chaves SSH
yes '' | ssh-keygen -N '' > /dev/null
## Fim de Criar Chaves SSH

cp /root/.ssh/id_rsa.pub /vagrant/chave

sudo yum -y install epel-release
echo "-----------------------------"
echo "Instaling Ansible. Hold On..."
echo "-----------------------------"
sudo yum -y install ansible
ansible-galaxy collection install community.general
echo "-----------------------------"
echo "Modifying Hosts with VM Ip..."
echo "-----------------------------"
cat <<EOT >> /etc/hosts
10.0.0.5 control-node
10.0.0.4 app01-coodesh
EOT
cat <<EOT >> /etc/ansible/hosts
[apps]
10.0.0.4
EOT
echo "IaC With Ansible..."
echo "IaC With Ansible..."
echo "IaC With Ansible..."
ansible-playbook /vagrant/playbooks/app.yml
