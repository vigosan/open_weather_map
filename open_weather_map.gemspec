# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open_weather_map/version'

Gem::Specification.new do |spec|
  spec.name          = "open_weather_map"
  spec.version       = OpenWeatherMap::VERSION
  spec.authors       = ["Vicent Gozalbes"]
  spec.email         = ["vigosan@gmail.com"]
  spec.summary       = %q{A ruby wrapper for Open Weather Map}
  spec.description   = %q{A ruby wrapper for Open Weather Map}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "webmock", "~> 1.20.4"

  spec.add_dependency "faraday", "~> 0.9.0"
end
