FROM nginx:latest

RUN apt-get update && apt-get install -y \
        git \
        net-tools \
        inetutils-ping \
        vim

# remove default nginx conf file... we dont need that
RUN rm -f /etc/nginx/conf.d/default.conf;