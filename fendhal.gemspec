Gem::Specification.new do |s|
  s.name          = 'fendhal'
  s.version       = '0.0.1'
  s.date          = '2013-05-22'
  s.summary       = "Modular, class based controller actions for Rails"
  s.description   = "Modular, class based controller actions for Rails"
  s.authors       = ["Russell Dunphy"]
  s.email         = ['russell@russelldunphy.com']
  s.files         = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]
  s.homepage      = 'http://github.com/rsslldnphy/fendhal'

  s.add_dependency "actionpack"
  s.add_development_dependency "rspec"
  s.add_development_dependency "simplecov"

end
