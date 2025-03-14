# Usa l'immagine ufficiale di Elasticsearch
FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.2

# Imposta le variabili d'ambiente per un nodo singolo
ENV discovery.type=single-node
ENV ES_JAVA_OPTS="-Xms512m -Xmx512m"

# Espone la porta 9200 per le API REST
EXPOSE 9200

# Comando per avviare Elasticsearch
CMD ["bin/elasticsearch"]
EXPOSE 9200

COPY config/elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
