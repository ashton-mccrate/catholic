# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'catholic/version'

Gem::Specification.new do |spec|
  spec.name          = "catholic"
  spec.version       = Catholic::VERSION
  spec.authors       = ["Ashton McCrate"]
  spec.email         = ["akmccrate@gmail.com"]
  spec.description   = %q{Adds Catholic doctrine to the Ruby programing language}
  spec.summary       = %q{Adds Catholic doctrine to the Ruby programing language}
  spec.homepage      = "https://github.com/akmcc/catholic"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
