ssh root@host01 "git --git-dir=/root/projects/DevOps/sentry-katacoda/.git --work-tree=/root/projects/DevOps/sentry-katacoda pull"
ssh root@host01 "curl -k --silent --location https://rpm.nodesource.com/setup_12.x | sudo bash -"
ssh root@host01 "yum -y install nodejs"
ssh root@host01 "touch /etc/rhsm/ca/redhat-uep.pem"
