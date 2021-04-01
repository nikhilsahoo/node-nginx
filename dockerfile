FROM ubuntu:20.04
MAINTAINER Nikhil Sahoo "nikhilsilicon@gmail.com"

RUN DEBIAN_FRONTEND=noninteractive apt update && \
    DEBIAN_FRONTEND=noninteractive apt -y upgrade

RUN DEBIAN_FRONTEND=noninteractive apt -yq install net-tools nginx curl

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt install -y nodejs

expose 80
expose 443

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
