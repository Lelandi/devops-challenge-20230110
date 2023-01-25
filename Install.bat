@ECHO OFF
@echo "--------------------------------------------------------------"
echo "1 - Install Vagrant and Git"
PAUSE
@echo "--------------------------------------------------------------"
echo "2 - Installing vagrant plugins... Please wait..."
REM vagrant plugin install vagrant-azure
REM vagrant plugin install vagrant-ssh-config
REM vagrant plugin install vagrant-scp
REM vagrant plugin install vagrant-host-shell
REM vagrant box add azure https://github.com/msopentech/vagrant-azure/raw/master/dummy.box
@echo "--------------------------------------------------------------"
echo "git clone https://github.com/Lelandi/devops-challenge-20230110"
@echo "--------------------------------------------------------------"
@echo " "
@echo "--------------------------------------------------------------"
echo Change Azure access information on Vagrantfile (location: ansible-lab/control-node folder)
@echo "--------------------------------------------------------------"
@echo "--------------------------------------------------------------"
@echo "--------------------------------------------------------------"
PAUSE
echo off
REM %cd%
echo on
cd ansible-lab\control-node\
echo on
@echo "--------------------------------------------------------------"
@echo "4 - Let me guide you through the process. Please Stand By...:"
vagrant up --provider=azure --provision --color
