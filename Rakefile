# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

MyFirstRailsApp::Application.load_tasks
require 'rubygems'
require 'rspec/core/rake_task'
require 'ci/reporter/rake/rspec'

desc "Run those specs"
task :spec => [ "ci:setup:rspec" ]
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w{--colour --format progress}
  t.pattern = 'spec/*_spec.rb'
end
