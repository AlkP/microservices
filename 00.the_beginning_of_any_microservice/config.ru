require_relative 'config/environment'

map '/ads' do #TODO имя корня микросервиса http://localhost:9292/microservice/
  run AdRoutes
end