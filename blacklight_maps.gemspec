# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blacklight_maps/version'

Gem::Specification.new do |spec|
  spec.name          = 'blacklight_maps'
  spec.version       = BlacklightMaps::VERSION
  spec.authors       = ['Jack Reed']
  spec.email         = ['phillipjreed@gmail.com']

  spec.summary       = 'Search and view Blacklight resources on a map'
  spec.description   = 'Search and view Blacklight resources on a map'
  spec.homepage      = 'https://github.com/sul-dlss/blacklight_maps'
  spec.license       = 'Apache'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '~> 4.0'
  spec.add_dependency 'blacklight', '~> 6.0'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'engine_cart', '~> 0.8'
  spec.add_development_dependency 'solr_wrapper'
end
