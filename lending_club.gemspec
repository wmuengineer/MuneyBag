# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lending_club/version'

Gem::Specification.new do |spec|
  spec.name = "MuneyBag"
  spec.version = LendingClub::VERSION
  spec.authors = ["Adam Bell"]
  spec.email = ["adam@lucidcloud.io"]
  spec.summary = %q{Ruby wrapper for the Lending Club API.}
  spec.post_install_message = "Invest in others wisely, and always secure the MuneyBag"
  spec.homepage = "https://github.com/wmuengineer/lending_club"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency('faraday')
  spec.add_runtime_dependency('faraday_middleware')
end
