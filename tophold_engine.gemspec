# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tophold_engine/version'

Gem::Specification.new do |gem|
  gem.name          = "tophold_engine"
  gem.version       = TopholdEngine::VERSION
  gem.authors       = ["tteng"]
  gem.email         = ["tim.rubist@gmail.com"]
  gem.description   = %q{tophold models engine}
  gem.summary       = %q{tophold models center}
  gem.homepage      = "http://github.com/tteng/tophold_engine"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "mysql2", ">= 0.3.11"

  gem.add_dependency "configatron", ">= 2.10.0"

  gem.add_dependency "mongoid"

  gem.add_dependency "sunspot"

  gem.add_dependency "sunspot_cell"

  gem.add_dependency "sunspot_mongoid"

end
