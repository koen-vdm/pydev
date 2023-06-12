FROM ubuntu:latest

RUN apt update
# install
RUN apt install -y python3 openssh-client nano git
# the following is only available when connected to work network
RUN pip install git+ssh://git@bitbucket.diasemi.com:7999/lpc_cs/lpc_cs_toolkit.git
# entrypoint to keep container running after creation
ENTRYPOINT ["tail", "-f", "/dev/null"]
COPY getstarted.py /root/getstarted.py