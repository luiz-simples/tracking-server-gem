# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tracking/api/version'

Gem::Specification.new do |spec|
  spec.name          = "tracking-api"
  spec.version       = Tracking::Api::VERSION
  spec.authors       = ["Luiz Amorim"]
  spec.email         = ["luiz.simples@gmail.com"]
  spec.platform      = Gem::Platform::RUBY
  spec.licenses      = ['UNLICENSED']
  spec.summary       = "Integration service https://tracking-server.herokuapp.com"
  spec.description   = "Save view-pages and other actions of user navigation"
  spec.homepage      = "https://github.com/luiz-simples/tracking-server-gem"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'httparty', "~> 0.13"
end
