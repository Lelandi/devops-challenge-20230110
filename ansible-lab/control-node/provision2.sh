#/bin/sh
##Copy ssh permisions##
sudo cp /vagrant/.ssh/id_rsa /home/vagrant/.ssh
sudo -u vagrant cat /vagrant/.ssh/id_rsa.pub | sudo -u vagrant tee -a /home/vagrant/.ssh/authorized_keys >/dev/nulls
sudo systemctl reload sshd
