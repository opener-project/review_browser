require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

# Only load the Rakefile of the engine if we actually need it, otherwise it's
# only going to slow things down.
if !!ENV['ENGINE_RAKEFILE']
  APP_RAKEFILE = File.expand_path('../spec/dummy/Rakefile', __FILE__)

  load 'rails/tasks/engine.rake'
end

Dir.glob(File.expand_path('../task/*.rake', __FILE__)) do |task|
  import(task)
end

task :default => :test
