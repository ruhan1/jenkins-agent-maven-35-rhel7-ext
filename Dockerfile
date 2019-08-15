FROM quay.io/openshift/origin-jenkins-agent-maven

USER root

RUN INSTALL_PKGS="docker" && \
    yum install -y $INSTALL_PKGS && \
    yum clean all -y

USER 1001