FROM debian:buster-slim
#Install supervisord to manage processes
#Install nghttpd for static files
RUN apt-get update && apt-get install -y    nghttp2-server \
                                            supervisor

ADD supervisord.conf /etc/supervisor/
WORKDIR /etc/supervisor/conf.d
WORKDIR /srv/http/static
EXPOSE 8081
USER daemon
CMD [ "/usr/bin/supervisord" ]
