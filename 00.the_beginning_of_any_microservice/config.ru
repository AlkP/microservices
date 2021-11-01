require_relative 'config/environment'

map '/ads' do #TODO имя корня микросервиса http://localhost:30000/ads/
  run AdRoutes
end