# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primes/version'

Gem::Specification.new do |spec|
  spec.name          = "primes"
  spec.version       = Primes::VERSION
  spec.authors       = ["Piotr Kowalski"]
  spec.email         = ["piotr.kowalski@me.com"]
  spec.description   = %q{Display products table for n prime numbers}
  spec.summary       = %q{Display products table for n prime numbers}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
end
