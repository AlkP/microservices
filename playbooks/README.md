у ansible многоуровневая настройка

/etc/ansible/ansible.cfg - глобальная

ansible.cfg - в вашем проекте это настройка для вашего проекта. [документация](https://docs.ansible.com/ansible/2.4/intro_configuration.html)

если указыаете файл с переменными, в моём случае hosts то для этого файла [документация](https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html#connecting-to-hosts-behavioral-inventory-parameters)

##

для начала нужно создать пользователя sudopasswordless на удаленной машине

https://aws.amazon.com/ru/premiumsupport/knowledge-center/new-user-accounts-linux-instance/

* sudo adduser barabashka --disabled-password
* и далее по инструкции, создаем файл pem и переносим его для вновь созданного пользователя

тезисно:

* ```sudo useradd -m -s /bin/bash -c "Administrative User" deploy```
* ```sudo visudo```
и записать строку ```deploy ALL=(ALL) NOPASSWD:ALL```


запуск единичного плейбука ```ansible-playbook postgresql.yml```

список открытых портов ```sudo ufw status```

открыть порт ```sudo ufw allow 15672```

посмотреть правила портов для приложений ```sudo ufw app list```

добавить правила для приложения ```sudo ufw allow 'Nginx Full'```


Если при долбавлении репозитория вылетают левые ошибки, то нужно добавлять его с параметром update_cache: no, чтобы при проверке не пыталось обновить кеш.
А следующией задачей уже обновлять кеш и получить ошибку с доступностью к данному репозиторию.
пример ./playbooks/rabbitmq.yml задачи: ensure rabbitmq repositories are added & Update cache with not signed application