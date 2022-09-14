From codercom/code-server:latest
LABEL maintainer="NaturePi <pengziran@gmail.com>"

WORKDIR /home/coder/
RUN apt-get update 

# Java
RUN apt-get install -y \
    openjdk-17-jdk \
    maven 
RUN code-server --install-extension vscjava.vscode-java-pack
RUN code-server --install-extension pivotal.vscode-boot-dev-pack
RUN code-server --install-extension k--kato.intellij-idea-keybindings
RUN code-server --install-extension zerodind.familiar-java-themes
RUN code-server --install-extension gabrielbb.vscode-lombok

# Node
RUN apt-get install -y npm
RUN sudo npm i yarn -g

# Tools
RUN apt-get install -y \
    fish \
    vim \
    ssh \
    squid \
    iputils-ping 

RUN rm -rf /var/lib/apt/lists/*
