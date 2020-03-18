ssh root@host01 "git --git-dir=/sentry-katacoda/sentry-tutorial/sample-app.git --work-tree=/sentry-katacoda/sentry-tutorial/sample-app.git pull"
ssh root@host01 "curl -k --silent --location https://rpm.nodesource.com/setup_12.x | sudo bash -"
ssh root@host01 "yum -y install nodejs"
ssh root@host01 "touch /etc/rhsm/ca/redhat-uep.pem"
