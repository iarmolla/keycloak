# Dockerfile
FROM quay.io/keycloak/keycloak:24.0.3

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Variables de entorno de Keycloak
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin
ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://mainline.proxy.rlwy.net:18650/railway
ENV KC_DB_USERNAME=postgres
ENV KC_DB_PASSWORD=ZBHaYFAOxzLwLRxFogFLtXcFygmXXvfj
ENV KC_HOSTNAME=localhost
EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start"]
