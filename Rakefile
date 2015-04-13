task :schema do
  system 'bundle exec ruby show_schema.rb'
end

namespace :db do
  task :migrate do
    system 'ruby mini_migration.rb'
  end

  task :seed do
    system 'bundle exec ruby sqlite_test.rb'
  end
end

task :server do
  system 'bundle exec rackup -p 3002'
end


