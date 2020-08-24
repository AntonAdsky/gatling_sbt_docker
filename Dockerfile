FROM openjdk:8-jre-alpine

RUN apk update && apk add bash curl
RUN addgroup -S gatling && adduser -S gatling -G gatling
RUN mkdir -m 0755 -p /usr/local/app/bin

COPY Example.jar /usr/local/app/bin
COPY docker-entrypoint.sh /usr/local/app/bin

RUN chown -R gatling:gatling /usr/local/app
RUN chmod +x /usr/local/app/bin/docker-entrypoint.sh

CMD ["/usr/local/app/bin/docker-entrypoint.sh"]

