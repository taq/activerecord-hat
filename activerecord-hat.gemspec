lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_record/hat/version'

Gem::Specification.new do |spec|
  spec.name          = 'activerecord-hat'
  spec.version       = ActiveRecord::Hat::VERSION
  spec.authors       = ['Eustaquio Rangel']
  spec.email         = ['taq@eustaquiorangel.com']

  spec.summary       = %q{A method to return human_attribute_name on an easier way on an instance}
  spec.description   = %q{Just use instance.hat(<attribute>) to get the human attribute name translation for the attribute}
  spec.homepage      = 'https://github.com/taq/activerecord-hat'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'activerecord', '~> 4.0'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'sqlite3', '~> 1.0'
end
