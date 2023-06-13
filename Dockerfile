FROM ubuntu:latest

RUN apt update
# install apt
RUN apt install -y python3-pip openssh-client nano git
# install pip
RUN pip install pre-commit
# entrypoint to keep container running after creation
ENTRYPOINT ["tail", "-f", "/dev/null"]
COPY setup.sh /root/setup.sh