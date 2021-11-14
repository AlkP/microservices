###Основные гемы будущего микросервиса:
* За работу с бозой данных будет отвечать `Sequel`
* Для конфигурирования приложения будет использован `config`
* Для обработки http запросов будет использована `Sinatra`
* Вспомогательные элементы (валидации и т.п.) `dry-rb`

##
Для запуска сервера `bin/puma`
##
запуск консоли `bin/console`
##
Требуется переименовать _settings.local.yml (убрать подчеркивание).
Вносим данные соединения с сервером. И создаем базу данных

`createdb -U username -h localhost microservice_development`
`createdb -U username -h localhost microservice_test`
##
####Работа с миграциями

Для просмотра списка доступных команд
```
bin/rake --tasks
```
```
bin/rake db:migrate
RACK_ENV=test bin/rake db:migrate

bin/rake db:seed
RACK_ENV=test bin/rake db:seed
```
чтобы смигрировать на опеределенную версию
```
bin/rake ‘db:migrate[0]’
```
вместо 0 можно указать timestamp файла.