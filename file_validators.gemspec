$:.push File.expand_path('../lib', __FILE__)

require 'file_validators/version'

Gem::Specification.new do |s|
  s.name        = 'file_validators'
  s.version     = FileValidators::VERSION
  s.authors     = ['Ahmad Musaffa']
  s.email       = ['musaffa_csemm@yahoo.com']
  s.summary     = 'ActiveModel file validators'
  s.description = 'Adds file validators for ActiveModel'
  s.homepage    = 'https://github.com/musaffa/file_validators'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^spec/})
  s.require_paths  = ['lib']

  s.add_dependency 'activemodel'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec-rails', '~> 3.0.2'
  s.add_development_dependency 'coveralls'
end