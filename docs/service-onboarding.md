# Steps to on-board a new service

### Pre-requisites

- First setup jenkins using `jenkins-setup.md`
- Each service should have a build folder which contains `Dockerfile`, `Jenkinsfile` and a `build.sh` if needed. Jenkins file is very generic and one can use the given `Jenkinsfile` in the root folder of this repo. Following should be the repo structure at GitHub or any other SCM.

```
service_repo_name
    - build
        - Dockerfile
        - Jenkinsfile
        - build.sh (optional)
    - src
    - other folders
```

### Steps for build

- Now go to build folder and create a new item. Copy an existing build job for this new item.
- Configure the newly created job and modify the paths of `Dockerfile`, `Jenkins`, `Git Repo` according to your repository structure.
- Test a build by clicking build now

### Steps for deploy

- Now go to deploy folder and create a new item. Copy an existing deploy job for this new item.
- Go to `ansible_workspace_dir` and add a new tag and respective roles for the new service. You can use the structure of existing roles to add a new service.
- Update the Nginx conf file to expose your services on the local host from the docker swarm. 

