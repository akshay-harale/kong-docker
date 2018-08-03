FROM jboss/keycloak:latest
run java -cp /opt/jboss/keycloak/modules/system/layers/base/com/h2database/h2/main/h2-1.4.193.jar org.h2.tools.Shell -url "jdbc:h2:/opt/jboss/keycloak/standalone/data/keycloak" -user sa -password sa -sql "update realm set ssl_required='NONE' where id = 'master'"
