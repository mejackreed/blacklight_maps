require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

Bundler::GemHelper.install_tasks

load 'tasks/blacklight_maps.rake'

require 'engine_cart/rake_task'

task default: :spec
