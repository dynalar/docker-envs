FROM nginx:latest

RUN apt-get update && apt-get install -y

# remove default nginx conf file... we dont need that
RUN rm -f /etc/nginx/conf.d/default.conf;