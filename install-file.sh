#Install Java
echo "--------------------Installing Java--------------------"
sudo yum update
sudo yum upgrade -y 
sudo amazon-linux-extras install java-openjdk11 -y
#Install Jenkins 
echo "--------------------Installing Jenkins--------------------"
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum update -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
#Install docker
echo "--------------------Installing Docker--------------------"
sudo yum update
sudo yum search docker
sudo yum info docker
sudo yum install docker
#Install ansible
echo "--------------------Installing Ansible--------------------"
sudo yum update -y
sudo yum install software-properties-common -y
#sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo yum install ansible -y
#Add docker to sudo group
echo "--------------------Add Docker to Sudo group--------------------"
sudo groupadd docker && sudo usermod -aG docker $USER && newgrp docker && sudo chmod 777 /var/run/docker.sock
#Show Jenkins Password
echo "--------------------Jenkins Password--------------------"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword