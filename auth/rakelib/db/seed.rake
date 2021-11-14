namespace :db do
  desc 'Seed the database with fake data'
  task :seed => :settings do |t, args|
    require_relative '../../config/environment'

    Sequel.extension :seed
    Sequel::Seed.setup :development

    Sequel.connect(Settings.db.to_hash) do |db|
      Sequel::Seeder.apply(db, './db/seeds')
    end
  end
end
