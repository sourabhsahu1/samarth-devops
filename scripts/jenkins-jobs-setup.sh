echo -e "\n\e[0;32m${bold}Stop Jenkins ${normal}\n"
sudo service jenkins stop

echo -e "\n\e[0;32m${bold}Removing /var/lib/jenkins/jobs ${normal}\n"
rm -rf /var/lib/jenkins/jobs

echo -e "\n\e[0;32m${bold}Making a symlink where /var/lib/jenkins/jobs points to /home/samarth-devops/jenkins-jobs/jobs ${normal}\n"
ln -s /home/samarth-devops/jenkins-jobs/jobs/ /var/lib/jenkins/

echo -e "\n\e[0;32m${bold}Chown the jobs to jenkins user ${normal}\n"
chown -R jenkins:jenkins /var/lib/jenkins/jobs
chown -R jenkins:jenkins /home/samarth-devops/jenkins-jobs/jobs

echo -e "\n\e[0;32m${bold}Restart Jenkins${normal}\n"
systemctl restart jenkins
