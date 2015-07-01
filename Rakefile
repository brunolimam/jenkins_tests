# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

MyFirstRailsApp::Application.load_tasks

if ENV['GENERATE_REPORTS'] == 'true'
  require 'ci/reporter/rake/rspec'
  task :rspec => 'ci:setup:rspec'
end
