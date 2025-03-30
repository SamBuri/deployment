helm install kafka bitnami/kafka
helm upgrade  kafka bitnami/kafka  --set listeners.client.protocol=PLAINTEXT
