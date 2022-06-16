From jenkins/jenkins:lts

# Running as root to have an easy support for Docker
USER root

# Jenkins init scripts
#COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/

# Install Jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN jenkins-plugin-cli $(cat /usr/share/jenkins/plugins.txt) && \ 
#  mkdir -p /usr/share/jenkins/ref/ && \
#    echo lts > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state && \
#    echo lts > /usr/share/jenkins/ref/jenkins.install.InstallUtil.lastExecVersion

RUN jenkins-plugin-cli --plugins kubernetes \

#USER 1001
