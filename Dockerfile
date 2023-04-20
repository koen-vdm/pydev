FROM ubuntu:latest

RUN apt update
# install
RUN apt install -y python3 openssh-client nano git
# entrypoint to keep container running after creation
ENTRYPOINT ["tail", "-f", "/dev/null"]