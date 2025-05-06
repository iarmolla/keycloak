# Dockerfile
FROM quay.io/keycloak/keycloak:24.0.3

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# En modo standalone y con inicio automático de configuración
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start-dev"]
