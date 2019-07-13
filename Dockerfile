FROM yoanndelattre/base:base-debian
LABEL MAINTAINER='Yoann Delattre "github.com/yoanndelattre | twitter.com/yoanndelattre_"'
RUN apt-get update && apt-get upgrade -y && \
      apt-get install -y nginx && \
      apt-get -qy clean && \
      rm -rf /var/lib/apt/lists/*
VOLUME [ "/var/www/html" ]
WORKDIR /var/www/html
EXPOSE 80
CMD nginx -v && echo "Website is viewable at: http://localhost:80"; exec nginx -g 'daemon off;'