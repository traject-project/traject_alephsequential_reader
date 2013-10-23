# -*- encoding: utf-8 -*-

require File.expand_path('../lib/traject/alephsequential_reader/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "traject_alephsequential_reader"
  gem.version       = Traject::AlephsequentialReader::VERSION
  gem.summary       = %q{Traject reader for AlephSequential files using stock ruby-marc}
  gem.description   = %q{A basic traject reader to process Ex Libris's AlephSequential format on input}
  gem.license       = "MIT"
  gem.authors       = ["Bill Dueber"]
  gem.email         = "bill@dueber.com"
  gem.homepage      = "https://github.com/billdueber/traject_alephsequential_reader#readme"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'marc'
  gem.add_dependency 'marc_alephsequential'
  gem.add_dependency 'yell'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'yard'
end
