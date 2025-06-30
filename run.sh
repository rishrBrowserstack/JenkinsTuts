git add .
git commit -m "update"
git push
jenkins-lts-cli -s http://localhost:8080/ -auth rish:777111 build pipeline-Tuts-1   -p USERNAME=rish -p ENVIRONMENT=qa -p DEBUG=true
# sleep 10
# jenkins-lts-cli -s http://localhost:8080/ -auth rish:777111 console pipeline-Tuts-1   >> jenkins.out.console