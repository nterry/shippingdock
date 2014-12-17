# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shipping_dock/version'

Gem::Specification.new do |spec|
  spec.name          = 'shipping_dock'
  spec.version       = ShippingDock::VERSION
  spec.authors       = ['Nicholas Terry']
  spec.email         = ['nick.i.terry@gmail.com']
  spec.summary       = %q{Docker container manager}
  spec.description   = %q{Docker container manager}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'haproxy-tools', '~> 0.3.2'
  spec.add_dependency 'docker-api', '~>1.17.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
