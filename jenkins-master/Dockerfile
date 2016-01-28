FROM jenkins

COPY config/plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

COPY config/executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

# needed to be able to mount directories in cloud providers
USER root
