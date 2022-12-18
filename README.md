# Create Jenkins EC2 on AWS using Terraform | Run Jenkins Pipeline using Jenkins
# Step 1 :
# Build AWS EC2 Instance
_________________________
cd terraform/

terraform init

terraform plan

terraform apply

__________________________________________________________________________________________
# Step 2 :
# Install Jenkins and other dependencies
_________________________________________

# SSH to the EC2 using the keypair, Create sh file with the commands as shown in the install.sh file 
vim install-file.sh
chmod +x install-file.sh 
./install-file.sh
___________________________________________________________________________________________
# Step 3 :
# Setup Jenkins
_________________
# Access Jenkins using the EC2 IPv4-Public-DNS:"your port "

___________________________________________________________________________________________
# Step 4 :
# Create Jenkins Pipeline
___________________________

In Pipeline Section in the end of the page choose Pipeline script from SCM > Add Gihub Repository link > Using Github Credentials .
