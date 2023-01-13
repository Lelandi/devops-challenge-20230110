# devops-challenge-20230110
DevOps Challenge Coodesh
Implantação de Calculadora React utilizando IaC

# 1 - Instructions:
- Install and Configure Ansible on a Virtual Machine
- Use the app.yml located on "ansible" folder
    - Build the Calculator located on this repo submodule 
    - Deploy to your storage location
    - Make the build directory available online

# 2 - Deployment Stages: 
## Stage 1
- [X] Analysis of requirements 
- [X] Tested Project locally 
- [X] Worked Successfully 

## Stage 2
- [X] IaC Ansible done locally 
- [X] Worked Successfully 

## Stage 3
- [X] Add Calculator as Submodule to a public repo
- Choosing from create the infrastructure from Azure Marketplace or Vagrant 
- Auth error when trying to connect Vagrant to Azure using https://github.com/Azure/vagrant-azure, trying another way
- Ssh error on Vagrant Linux Machine fixed with azure cli: ssh-keygen -m PEM -t rsa -b 4096 and transfering to /.ssh/id_rsa.pub
- Auth fixed using owner role to the Azure Service Principal
- [X] Create connection to Azure using Ansible
- [ ] Deploy Ansible Control-Node
- [ ] Deploy Ansible App01
- [ ] Deploy Build using Ansible
- [ ] Yaml set for Azure/Google/Amazon
- [ ] Readme done (Project title, Description, Instructions for instalation and use, .gitignore) 
- [ ] Worked Successfully (Done)

## Stage 4
- [ ] Plus 1
- [ ] Plus 2
- [ ] Plus 3

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