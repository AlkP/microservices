## thinknetica - `Микросервисы на Ruby`
\+ домашние задания

монолит: https://github.com/psylone/ads

далее разбиваю на микросервисы, описание папок:

00.basis - основа для микросервисов

auth - сервис работы с пользователями (создание пользователя, получение токена, проверка токена)

ads - сервис для работы со статьями

geo - сервис для обработки геоданных

##
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