FROM alpine:3.2
MAINTAINER Bernardo D joaquim "bjoaquim@vertigo.com.br"
RUN apk --update add openjdk7-jre

ADD ./fakeSMTP-2.0.jar /tmp/fakeSMTP-2.0.jar

RUN mkdir /tmp/spool_mail

WORKDIR /tmp

VOLUME /tmp/spool_mail

#CMD ["/usr/bin/java", "-jar", "fakeSMTP-2.0.jar","--help"]

CMD ["/usr/bin/java", "-jar", "fakeSMTP-2.0.jar","-s", "-b", "-p", "2525", "-o", "/tmp/spool_mail"]