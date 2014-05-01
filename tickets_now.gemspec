# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tickets_now/version'
require 'tickets_now/api'

Gem::Specification.new do |gem|
  gem.name          = "tickets_now"
  gem.version       = TicketsNow::VERSION
  gem.authors       = ["Aashish Kiran"]
  gem.email         = ["aashish@affluence.org"]
  gem.description   = %q{TicketsNow API built on SOAP to get data}
  gem.summary       = %q{TicketsNow API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/) << "lib/tickets_now/api.rb"
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
