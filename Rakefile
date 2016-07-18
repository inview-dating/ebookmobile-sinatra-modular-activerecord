require "rambo/rake/task"
require "rspec/core/rake_task"
require "sinatra/activerecord/rake"

Rambo::Rake::Task.new
RSpec::Core::RakeTask.new

namespace :db do 
  task :load_config do 
    require "./ebookmobile"
  end
end

task :default => [ :rambo, :rspec ]