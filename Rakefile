require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
 
desc 'Default: run specs.'
task :default => :spec
 
desc "Run specs"
RSpec::Core::RakeTask.new do |t|
t.pattern = "./spec/**/*_spec.rb"
end

namespace :cover_me do
  desc "Generates and opens code coverage report."
  task :report do
    require 'cover_me'
    CoverMe.complete!
  end
end