# Steps to setup E2E deployment using Jenkins, Ansible, Docker Swarm

**Pre-Requisite:** Dockerfile for the service should be there. 


The following steps are to be followed with some modifications.

<https://drive.google.com/file/d/1Bi8tE-sP0mTkhsVGK0NtCt_dHZmMyJmw/view?ts=6329b80c>



- During Jenkins installation, after copying the jobs `chown` the `/var/lib/jenkins/jobs/` to `jenkins` user
- In the elastic search configuration, update the elastic search file as per your cluster needs
- In the Install `Docker Compose` section, run `docker swarm init` before issuing other commands
- When the Jenkins is up and ready to go, we have to take care of the following

- Update `docker-server` URL in Jenkins Jobs to pull and push images in build jobs
- Add ssh keys for your server from the Jenkins server before using ansible playbooks

- Add `sudo` to Jenkins deploy jobs commands in `Configure Jobs` section. 
- Populate the environment variables for ansible-playbooks in Deploy jobs of Jenkins
- Update the Nginx conf files according to the services of your application

- **Gotcha:** React environment variables are pushed during the build, so runtime docker environment variables will not be picked up by React Apps. Therefore, configure the Dockerfiles accordingly and builds accordingly. 