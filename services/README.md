## работа с внешними сервисами RabbitMQ, Elastic stack

####Запуск сервисов

```
docker-compose up -d
```
для перезапуска docker-compose restart


для жителей таких стран как Северная Корея, Крым и т.п.  первый запуск потребует vpn
##

####Kibana
http://localhost:5601/

##


####RabbitMQ
http://localhost:15672/
user:     guest
password: guest

rabbit_mq/examples/producer.rb - пример как зупушить сообщение в RabbitMq

rabbit_mq/examples/consumer.rb - пример как получить сообщение из RabbitMq


##заметки

Первоначальная настройка filebeat для kibana:
* запустить kibana & elasticsearch
```docker-compose up kibana```
т.к. у неё в зависимостях указана elasticsearch - она будет запущена автоматически
далее 
```docker-compose run filebeat setup``` 

Как посмотреть в kibana список всех индексов
Dev-Tools
GET ..cat/indices