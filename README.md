Implantação de Calculadora React utilizando IaC

# 1 - Instructions:
[X] Starting from Host Windows without Ansible
- Run Install.bat in root directory and follow the instructions
- The application will be available on https://coodeshdevops.z13.web.core.windows.net/ (Blob Storage with react scripts configuration enabled)
-----------------------------------------------------
[X] Starting from Host Ansible (Requirement: Control-Node and Application VMS)
- Access Ansible Control-Node Machine
- Clone the repository https://github.com/Lelandi/devops-challenge-20230110
- Run ansible-playbook /playbooks/app.yml inside repository folder
-----------------------------------------------------

# 2 - Deployment Stages: 
## Stage 1
- [X] Analysis of requirements 
- [X] Tested Project locally 
- [X] Worked Successfully 

## Stage 2
- [X] IaaC Ansible done locally 
- [X] Worked Successfully 

## Stage 3
- [X] Add Calculator as Submodule to a public repo
- Choosing from create the infrastructure from Azure Marketplace or Vagrant 
- [Issue]Auth error when trying to connect Vagrant to Azure using https://github.com/Azure/vagrant-azure, trying another way
- [Fix]Ssh error on Vagrant Linux Machine fixed with azure cli: ssh-keygen -m PEM -t rsa -b 4096 and transfering to /.ssh/id_rsa.pub
- [Fix]Auth fixed using owner role to the Azure Service Principal
- [X] Create connection to Azure using Ansible
- [X] Deploy Ansible Control-Node
- [X] Deploy Ansible App01
- Check connection between ansible hosts
- [Issue]VMs need auth ssh to see eachother
- [Fix]Added SSH to Authorized keys (app01-coodesh)
- [X] Deploy Build using Ansible
- [X] Yaml set for Azure
- npm cache clean --force / npm install (set it to yaml)
- open or forward port 3000 vagrant
- [X] Deploy build to public storage https://coodeshdevops.z13.web.core.windows.net/
- [Issue] Copy the index.html to root
- [Fix] Copy the Build directory to allow sending root files and directories separatelly
- [Issue] Vagrant halt during slave machine deployment
- [Fix] Changing Vagrantfile to allow delay after Ip Address configuration
- [X] Readme done (Project title, Description, Instructions for instalation and use, .gitignore) 
- [X] Worked Successfully (Done)

## Stage 4
- [ ] Plus 1 - Desenhar o fluxo de CI/CD do projeto
- [ ] Plus 2 - Configurar o fluxo do CI/CD com o fluxo de criação do sistema de Storage usando Infra as a Code
- [X] Plus 3 - Configurar os conceitos de modules para re-aproveitar o código do Infra as a Code

# ---------------
# 3 - Requisitos Coodesh:

Parte 1 - Build 
Adicionar o projeto como um Git Submodule no seu repositório
Seguir os passos para iniciar o projeto segundo a versão especifica do Node.js
Testar o projeto se está disponível localmente
Utilizar os comandos para gerar o Build do Projeto: npm run build

Parte 2 – Deploy
Configurar a infra-estrutura no Azure utilizando Ansible
Adicionar projeto em Storage (URL pública) pasta (build)
S3/Google Cloud Storage/Azure Storage

Parte 3 - Extras
Diferencial 1 - Desenhar o fluxo de CI/CD do projeto entregue nas etapas anteriores;
Diferencial 2 - Configurar o fluxo do CI/CD com o fluxo de criação do sistema de Storage usando Infra as Code;
Diferencial 3 - Configurar os conceitos de modules para re-aproveitar o código do Infra as Code

Readme do Repositório:
Deve conter o título do projeto
Uma descrição de uma frase
Como instalar e usar o projeto (instruções)
Não esqueça o .gitignore
