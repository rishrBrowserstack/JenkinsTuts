git add .
git commit -m "update"
git push
jenkins-lts-cli -s http://localhost:8080/ -auth rish:777111 build pipeline-Tuts-1  
sleep 2
jenkins-lts-cli -s http://localhost:8080/ -auth rish:777111 console pipeline-Tuts-1  