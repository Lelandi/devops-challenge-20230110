#/bin/sh
cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDjdqGmnyvvRVzZvA6C5c76ET/MaESE9W0hpPxIbEmNXML8nqmYatZC3yyUnFxV719RS0QBrCmWzWSuuLjJZbjR62WhVGUxLN2db38alCEKA7CCHF5Ac3EPak/BimsX5eFeycpe04d1+vXGPcALrFqHFiRPp1faYQZxvu3QOXs1vfEtK/GJ2InGTn1FIs7ur77EvD5AtaUrYjbNww7viP2pBvNzZMrbE5P+MdZc7KEaVORNwl52ihYXKRlwnzwLskFui5B9E35jMh5cvjOUDQpL0yGbav7ipvJs/vxczQUlr07AjYyNf3QA/4ooMKNqw+zvTCjT0Z5D35SuanGWsaQJ vagrant@control-node
EOT
##Criar Chaves SSH
yes '' | ssh-keygen -N '' > /dev/null
##Fim de Criar Chaves SSH

##Copy ssh permisions##
cat /vagrant/chave | tee -a /home/vagrant/.ssh/authorized_keys
rm /vagrant/chave 
#sudo sed -i 's/^#* *\(PermitRootLogin\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
#sudo sed -i 's/^#* *\(PasswordAuthentication\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
#sudo systemctl restart sshd.service
#sudo echo -e "vagrant\nvagrant" | (passwd vagrant)
#sudo echo -e "root\nroot" | (passwd root)