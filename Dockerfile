FROM yoanndelattre/base:base-debian
MAINTAINER Yoann Delattre "github.com/yoanndelattre | twitter.com/yoanndelattre_"
RUN apt-get update && apt-get upgrade -y

#       <--install nginx-->
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y nginx

#     <--clean installation-->
RUN apt-get -qy clean && \
      rm -rf /var/lib/apt/lists/*

VOLUME [ "/var/www/html" ]
EXPOSE 80
CMD nginx -g "daemon off;"