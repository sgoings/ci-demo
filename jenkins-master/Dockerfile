FROM jenkins

# needed to be able to mount directories in cloud providers
USER root

# http://docs.deis.io/en/latest/using_deis/install-client/
RUN curl -sSL http://deis.io/deis-cli/install.sh | sh
RUN mv deis /usr/local/bin/deis

# install a bunch o' plugins
COPY config/plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# increase number of executors (cause we can...)
COPY config/executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
