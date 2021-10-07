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
Требуется переименовать _settings.local.yml и убрать подчеркивание.
Вносим данные соединения с сервером. И создаем базу данных

`createdb -U username -h localhost microservice_development`
`createdb -U username -h localhost microservice_test`
