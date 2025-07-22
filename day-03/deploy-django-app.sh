#!/bin/bash

<< task
Deploy a django app end to end 
With error handling
task


clone_repo() {
	echo "Cloning the repo!"
	git clone https://github.com/LondheShubham153/django-notes-app.git
	cd django-notes-app
	echo "Cloned Successfully!"
}


install_dependencies() {
     echo "Installing dependencies!"
     # sudo apt-get update
     sudo apt install docker.io nginx docker-compose  -y
}


required_restarts() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}


building_docker() {
     sudo docker build -t notes-app .
}

running_app() {
     sudo docker run -d -p 8000:8000 notes-app:latest
}



echo "*********** Deployment Started **********"
if ! clone_repo;then
	echo "Some problem in cloning the repo!"
	cd django-app
fi

if ! install_dependencies; then
	echo "Error while installing the dependencies!"
	exit 1
fi

if ! required_restarts; then
	echo "There is some issue in restarting the docker and nginx!"
	exit 1
fi

if ! building_docker; then
	echo "Facing issue while builing the app!"
	exit 1
fi

if ! running_app; then
	echo "Issue in running the application!"
	exit1
fi

echo "*********** Deployment Successfull **********"

