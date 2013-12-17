# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sentiment_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "sentiment_parser"
  spec.version       = SentimentParser::VERSION
  spec.authors       = ["Jared Fraser"]
  spec.email         = ["dev@jsf.io"]
  spec.description   = %q{Determines a simple sentiment score for a given text}
  spec.summary       = %q{Determines a simple sentiment score for a given text}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
