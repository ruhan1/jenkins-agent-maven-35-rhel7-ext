FROM registry.redhat.io/openshift3/jenkins-agent-maven-35-rhel7
RUN yum -y install docker
