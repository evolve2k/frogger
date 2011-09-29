require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

require 'rake'
require 'rspec/core/rake_task'
require 'cucumber/rake/task'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "frogger"
  gem.homepage = "http://github.com/evolve2k/frogger"
  gem.license = "MIT"
  gem.summary = "Frogger makes logs easier to navigate."
  gem.description = "Navigating noise in your log files can be like trying to cross a busy road and avoid the cars. Frogger makes your log files more fun by adding some good ol' 8 bit color and a bit of formatting."
  gem.email = "evolve2k@gmail.com"
  gem.authors = ["Richie Khoo"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
end
Jeweler::RubygemsDotOrgTasks.new

task :default => [:spec, :cucumber]

RSpec::Core::RakeTask.new
Cucumber::Rake::Task.new
