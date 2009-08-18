# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require(File.join(File.dirname(__FILE__), 'config', 'boot'))

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'tasks/rails'

desc "Generate documentation for examples"
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'Wizardly Examples'
  # #rdoc.template = '../rdoc_template.rb'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc', 'LICENSE', 'app/**/*.rb', 'db/migrate/**/*.rb')
end

