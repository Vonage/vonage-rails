begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rdoc/task'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'VonageRails'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.md')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:test)

task default: :test

desc "Build gem"
task :build_gem do
  `rake build`
end

desc "Publish gem"
task publish_gem: [:build_gem] do
  `gem push pkg/*.gem`
  Rake::Task[:empty_pkg].invoke
end

desc "Empty pkg directory"
task :empty_pkg do
  `rm -rf pkg/*`
end
