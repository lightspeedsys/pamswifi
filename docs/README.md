Reuseable terraform configuration for unifi controller
===

this project uses terraform cloud as the backend for the terraform state. 


windows configuration

- install wsl
```ps1
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```
restart the machine for this change to take effect

- download a linux distrobution from the windows store
- start and provide username and password 

- Upgrade packages
```bash
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install python-pip
```
- install the aws cli

```bash
sudo apt install awscli
```
- install terraform

```bash
sudo apt-get install unzip
wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip -O terraform.zip
unzip terraform.zip && \
sudo mv terraform /usr/local/bin
rm terraform.zip
```

https://www.freecodecamp.org/news/going-https-on-amazon-ec2-ubuntu-14-04-with-lets-encrypt-certbot-on-nginx-696770649e76/   
https://medium.com/@hmalgewatta/setting-up-an-aws-ec2-instance-with-ssh-access-using-terraform-c336c812322f
https://community.ui.com/questions/Lets-Encrypt-and-UniFi-controller/3decc2c9-1c7b-4711-a842-59d90dc3be7e
https://www.bogotobogo.com/DevOps/Terraform/Terraform-terraform-userdata.php
https://crosstalksolutions.com/lets-encrypt-unifi/
https://www.stevejenkins.com/blog/2016/06/use-existing-ssl-certificate-linux-unifi-controller/

https://www.terraform.io/docs/commands/cli-config.html#credentials
https://help.ubnt.com/hc/en-us/articles/209376117-UniFi-Install-a-UniFi-Cloud-Controller-on-Amazon-Web-Services#8
https://medium.com/@brad.simonin/create-an-aws-vpc-and-subnet-using-terraform-d3bddcbbcb6
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux