FROM ubuntu:20.04
RUN apt update
RUN apt install -y squid
RUN echo "http_port 8080" > /etc/squid/squid.conf
RUN echo "acl all src all" >> /etc/squid/squid.conf
RUN echo "http_access allow all" >> /etc/squid/squid.conf
EXPOSE 8080
CMD squid -N
