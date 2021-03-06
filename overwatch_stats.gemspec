# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'version'

Gem::Specification.new do |spec|
  spec.name          = "overwatch_stats"
  spec.version       = OverwatchStats::VERSION
  spec.authors       = ["joelbitar1986"]
  spec.email         = ["joelbitar1986@gmail.com"]

  spec.summary       = "This app displays current stats of Overwatch(tm) heroes based on factors like winrate, popularity, K/D ratio and score/minute."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/joelbitar1986/OverwatchStats"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "nokogiri", "~> 1.6", ">= 1.6.8"
  spec.add_runtime_dependency "pry"


end
