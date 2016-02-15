$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'wechat/validator/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'wechat-validator'
  spec.version     = Wechat::Validator::VERSION
  spec.authors     = [ 'Topbit Du' ]
  spec.email       = [ 'topbit.du@gmail.com' ]
  spec.homepage    = 'https://github.com/topbitdu/wechat-validator'
  spec.summary     = 'The Wechat Validator engine includes a concern and a controller to handle the Wechat server validation request.'
  spec.description = 'The Wechat Validator engine handles the Wechat server validation requests.'
  spec.license     = 'MIT'

  spec.files         = Dir[ '{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md' ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = [ 'lib' ]

  spec.add_dependency 'rails', '~> 4.2.5'
  spec.add_dependency 'wechat-validation', '~> 0.1'

end
