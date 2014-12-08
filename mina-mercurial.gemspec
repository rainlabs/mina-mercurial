# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/mercurial/version'

Gem::Specification.new do |spec|
  spec.name          = 'mina-mercurial'
  spec.version       = Mina::Mercurial::VERSION
  spec.authors       = ['Vladimir Zyablitskiy']
  spec.email         = ['zyablitskiy@gmail.com']
  spec.description   = %q{Mercurial tasks for Mina}
  spec.summary       = %q{Mercurial tasks for Mina}
  spec.homepage      = 'https://github.com/rainlabs/mina-mercurial'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'mina'
  spec.add_dependency 'mercurial'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
