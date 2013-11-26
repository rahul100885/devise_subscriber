# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise_subscriber/version'

Gem::Specification.new do |spec|
  spec.name          = "devise_subscriber"
  spec.version       = DeviseSubscriber::VERSION
  spec.authors       = ["Rahul P. Chaudhari"]
  spec.email         = ["rahul100885@gmail.com"]
  spec.description   = %q{Devise extension for newsletter subscribers}
  spec.summary       = %q{Simple devise extension for newsletter subscription}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
