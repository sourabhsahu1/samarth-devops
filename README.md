# Steps to setup E2E deployment using Jenkins, Ansible, Docker Swarm

**Pre-Requisite:** Dockerfile for the service should be there. 


Install Jenkins: <https://www.digitalocean.com/community/tutorials/how-to-install-jenkins-on-ubuntu-22-04>

Install docker and docker-compose and add jenkins to docker group `sudo usermod -a -G docker jenkins`. 

Install python3 and then `pip3 install ansible`

- Copy the jobs from `jenkins-jobs` to `/var/lib/jenkins/jobs/`
- During Jenkins installation, after copying the jobs `chown` the `/var/lib/jenkins/jobs/` to `jenkins` user
- When the Jenkins is up and ready to go, we have to take care of the following

- Run `docker swarm init` on the host machine
- Update `docker-server` URL in Jenkins Jobs to pull and push images in build jobs
- Add ssh keys for your server from the Jenkins server before using ansible playbooks

- Populate the environment variables for ansible-playbooks in Deploy jobs of Jenkins, rename the `env-sample.j2` from the templates and add your service's environment variables.

- Update the Nginx conf files according to the services of your application

