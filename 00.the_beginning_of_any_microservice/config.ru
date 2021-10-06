require_relative 'config/environment'

map '/microservice' do #TODO имя корня микросервиса http://localhost:9292/microservice/
  run Application
end