begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  # no rspec available
end
begin
  require 'bundler/gem_tasks'
rescue LoadError
  # no rspec available
end