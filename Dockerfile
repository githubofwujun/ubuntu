FROM ubuntu:16.04
RUN apt-get install -y iptables && iptables -nL
