FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y git wget ansible && apt-get clean
# drop back to the regular jenkins user - good practice
USER jenkins
