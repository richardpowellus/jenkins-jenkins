FROM jenkins/jenkins:latest

USER root
RUN apt update && apt dist-upgrade -y && apt install -y procps lsb-release

# Install Docker
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt update && apt install -y docker-ce docker-ce-cli

# Intall jq
RUN apt install -y jq

# Clean up
RUN apt --purge autoremove && apt clean

USER jenkins
