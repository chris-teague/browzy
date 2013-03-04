# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'browzy/version'

Gem::Specification.new do |gem|
  gem.name          = "browzy"
  gem.version       = Browzy::VERSION
  gem.authors       = ["chris-teague"]
  gem.email         = ["chris.teague23@gmail.com"]
  gem.description   = %q{Easy platform for deploying qualiative cross browser checks}
  gem.summary       = %q{Browzy is a platform for quickly deploying to multiple devices and browsers.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rake'
  
  # Development Dependencies
  gem.add_development_dependency 'factory_girl', '~> 4.1'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'cover_me'
  gem.add_development_dependency 'mocha', "~> 0.12"
end
