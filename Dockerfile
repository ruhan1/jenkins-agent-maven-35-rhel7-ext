FROM quay.io/openshift/origin-jenkins-agent-maven
#openshift3/jenkins-agent-maven-35-rhel7

USER root

RUN INSTALL_PKGS="docker" && \
    yum install -y $INSTALL_PKGS && \
    yum clean all -y
