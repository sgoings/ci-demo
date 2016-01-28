FROM jenkins

COPY jenkins_config/plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

COPY jenkins_config/executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
