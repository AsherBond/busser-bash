# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'busser/bash/version'

Gem::Specification.new do |spec|
  spec.name          = "busser-bash"
  spec.version       = Busser::Bash::VERSION
  spec.authors       = ["Fletcher Nichol"]
  spec.email         = ["fnichol@nichol.ca"]
  spec.description   = %q{A Busser runner plugin for testing bash scripts}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/test-kitchen/busser-bash"
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'busser', '>= 0.2.0'

  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'cane'
  spec.add_development_dependency 'countloc'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'simplecov'
end
