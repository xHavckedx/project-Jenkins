FROM ubuntu:latest

RUN apt-get update
RUN apt-get install python3 -y

RUN apt install software-properties-common -y
RUN add-apt-repository --yes --update ppa:ansible/ansible
RUN apt install ansible -y

RUN touch /root/.ssh/known_hosts

CMD ["sh", "-c", "tail -f /dev/null"]