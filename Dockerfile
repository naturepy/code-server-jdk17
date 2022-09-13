From codercom/code-server:latest
LABEL maintainer="NaturePi <pengziran@gmail.com>"

WORKDIR /home/coder/
RUN sudo apt update 
# Tools
RUN sudo apt install -y fish
RUN sudo apt install -y git
RUN sudo apt install -y vim
RUN sudo apt install -y ssh
RUN sudo apt install -y squid

# Java
RUN sudo apt install -y openjdk-17-jdk
RUN sudo apt install -y maven
RUN code-server --install-extension vscjava.vscode-java-pack
RUN code-server --install-extension pivotal.vscode-boot-dev-pack
RUN code-server --install-extension k--kato.intellij-idea-keybindings
RUN code-server --install-extension zerodind.familiar-java-themes
RUN code-server --install-extension gabrielbb.vscode-lombok

# Node
RUN sudo apt install -y npm
RUN sudo npm i yarn -g
