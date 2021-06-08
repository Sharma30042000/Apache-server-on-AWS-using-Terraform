# Apache-server-on-AWS-using-Terraform
Description📄
🔰Write an Ansible PlayBook that does the following operations in the managed nodes:
🔹 Configure Docker
🔹 Start and enable Docker services
🔹 Pull the httpd server image from the Docker Hub
🔹 Run the docker container and expose it to the public
🔹 Copy the html code in /var/www/html directory and start the web server
Control Node IP: 192.168.43.131
Manage Node IP: 192.168.43.238
our worspace: /docker_ansible

First step is to create a inventory file and enter manage node IP : docker.txt

We need to add our inventory file to the ansible configuration file /etc/ansible/ansible.cfg

Now, we create the playbook: playbook docker.yml


run playbook :
ansible-playbook docker.yml

now we check our server : 192.168.43.238:8090

thank you !!!!




