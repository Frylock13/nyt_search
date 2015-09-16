# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nyt_search/version'

Gem::Specification.new do |spec|
  spec.name          = "nyt_search"
  spec.version       = NytSearch::VERSION
  spec.authors       = ["Vitaliy"]
  spec.email         = ["croaton6@gmail.com"]

  spec.summary       = "Summary"
  spec.description   = "A Ruby wrapper for the NYTimes Article Search API"
  spec.homepage      = "https://github.com/Frylock13/nyt_search"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency             "httparty"
end
