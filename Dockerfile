FROM openshift/jenkins-agent-maven-35-centos7

USER root

RUN INSTALL_PKGS="docker" && \
    yum install -y $INSTALL_PKGS && \
    yum clean all -y

RUN systemctl enable docker
RUN groupadd docker

USER 1001
