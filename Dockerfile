FROM alpine:3.19.1

MAINTAINER qwerto107 "qwerto1007@gmail.com" 

COPY ping0.sh /tmp/ping0.sh

RUN chmod +x /tmp/ping0.sh

RUN /tmp/ping0.sh

RUN rm -f /tmp/ping0.sh

ENV NAME 火星人

CMD /usr/bin/ping0 $NAME