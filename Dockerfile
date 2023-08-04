FROM python:3.10

RUN apt update -y && apt upgrade -y
RUN apt install sshpass -y
RUN pip install ansible

ENTRYPOINT [ "bash" ]