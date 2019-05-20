FROM ubuntu:18.04
RUN apt-get update -y \
&& apt-get install -y iptables \
&& cat /proc/sys/net/ipv4/ip_forward \
&& echo 1 > /proc/sys/net/ipv4/ip_forward \
&& sysctl -p \
&& iptables -nL
