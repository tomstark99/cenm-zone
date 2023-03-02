java -jar zone.jar \
    --driver-class-name=org.h2.Driver \
    --jdbc-driver="" \
    --user=zoneuser \
    --password=password \
    --url='jdbc:h2:file:./h2/identity-manager-persistence;DB_CLOSE_ON_EXIT=FALSE;LOCK_TIMEOUT=10000;WRITE_DELAY=0;AUTO_SERVER_PORT=0' \
    --run-migration=true \
    --enm-listener-port=5061 \
    --admin-listener-port=5063 \
    --auth-host=127.0.0.1 \
    --auth-port=8081 \
    --auth-trust-store-location certificates/corda-ssl-trust-store.jks \
    --auth-trust-store-password trustpass \
    --auth-issuer test \
    --auth-leeway 5 \
    --tls=true \
    --tls-keystore=certificates/corda-ssl-identity-manager-keys.jks \
    --tls-keystore-password=password \
    --tls-truststore=certificates/corda-ssl-trust-store.jks \
    --tls-truststore-password=trustpass