mkdir -p /root/projects/test
mkdir -p cd /root/projects/weather-app && git init /root/projects/weather-app"
cd /root/projects/weather-app && git remote add -f -t master -m master origin https://github.com/tqvarnst/weather-app.git && git fetch && git merge origin && git remote remove origin
for i in {1..200}; do oc create -f /root/eap72-image-stream.json -n openshift && oc import-image jboss-eap72-openshift -n openshift --all && break || sleep 2; done
cd /root/projects/weather-app && mvn package && mvn clean
