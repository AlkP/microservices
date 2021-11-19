## работа с RabbitMQ

####Запуск RabbitMQ:

```cassandraql
docker run \
  --rm \
  --name rabbitmq \
  -p 5672:5672 \
  -p 15672:15672 \
  --hostname node1 \
  -v rabbitmq:/var/lib/rabbitmq \
  rabbitmq:3-management
```
http://localhost:15672/
user:     guest
password: guest

##

producer.rb - пример как зупушить сообщение в RabbitMq

consumer.rb - пример как получить сообщение из RabbitMq