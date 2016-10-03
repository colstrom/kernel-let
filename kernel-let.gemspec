Gem::Specification.new do |gem|
  gem.name        = 'kernel-let'
  gem.version     = `git describe --tags --abbrev=0`.chomp
  gem.licenses    = 'MIT'
  gem.authors     = ['Chris Olstrom', 'Arnau Sanchez']
  gem.email       = 'chris@olstrom.com'
  gem.homepage    = 'https://github.com/colstrom/kernel-let'
  gem.summary     = 'Monkey patch adding Kernel#let for Scheme-style variable bindings.'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ['lib']
end
