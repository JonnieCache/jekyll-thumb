# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/thumb/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-thumb"
  spec.version       = Jekyll::Thumb::VERSION
  spec.authors       = ["Jonathan Davies"]
  spec.email         = ["jonnie@cleverna.me"]
  spec.summary       = %q{This Jekyll plugin adds a thumb tag which will autogenerate image thumbnails}
  spec.description   = %q{This Jekyll plugin autogenerates image thumbnails using the vips library}
  spec.homepage      = "https://github.com/JonnieCache/jekyll-thumb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-vips"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'jekyll', '> 2'
end
