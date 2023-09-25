FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
 
RUN apt-get update && apt-get install -y supervisor nginx
COPY nginx.conf /etc/supervisor/conf.d/nginx.conf
CMD ["supervisord", "-n"]

