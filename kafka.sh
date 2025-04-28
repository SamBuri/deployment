helm install kafka bitnami/kafka --set replicaCount=1  --set brokers.podCount=1 --set listeners.client.protocol=PLAINTEXT 
# helm upgrade  kafka bitnami/kafka  --set listeners.client.protocol=PLAINTEXT
