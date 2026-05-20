FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY target/glpi-taiga-integration-0.0.1-SNAPSHOT.jar app.jar
COPY docker-entrypoint.sh /app/docker-entrypoint.sh

RUN chmod +x /app/docker-entrypoint.sh \
    && mkdir -p /app/certs /app/logs

EXPOSE 8081

ENTRYPOINT ["/app/docker-entrypoint.sh"]