echo -e "\n\e[0;32m${bold}Copy jobs${normal}\n"
cp -rpf ../jenkins-jobs/* /var/lib/jenkins/jobs/
chown -R jenkins:jenkins /var/lib/jenkins/jobs

echo -e "\n\e[0;32m${bold}Restart Jenkins${normal}\n"
systemctl restart jenkins
