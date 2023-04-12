# docker build -t spool-dir .
FROM confluentinc/cp-kafka-connect:latest
ENV CONNECT_PLUGIN_PATH: /usr/share/java,/tmp/kafka-connectors
RUN confluent-hub install --no-prompt jcustenborder/kafka-connect-spooldir:latest
RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:latest
