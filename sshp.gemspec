# -*- encoding: utf-8 -*-
require File.expand_path(File.join(File.dirname(__FILE__), %w[lib sshp]))
require File.expand_path(File.join(File.dirname(__FILE__), %w[lib sshp version]))

Gem::Specification.new do |gem|
  gem.name          = "sshp"
  gem.version       = SSHP::VERSION
  gem.authors       = ["Pablo Cantero"]
  gem.email         = ["pablo@pablocantero.com"]
  gem.description   = %q{SSHP - Let's Pablo memorize your ssh credentials}
  gem.summary       = %q{SSHP - Let's Pablo memorize your ssh credentials}
  gem.homepage      = "https://github.com/phstc/sshp"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "pry"
end

