# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'damn_weather/version'

Gem::Specification.new do |spec|
  spec.name          = "damn-weather"
  spec.version       = DamnWeather::VERSION
  spec.authors       = ["Justyna Rachowicz"]
  spec.email         = ["mrowa44@gmail.com"]
  spec.license       = 'MIT'

  spec.summary       = %q{Get some damn emoji weather for your terminal!}
  spec.homepage      = "https://github.com/mrowa44/damn-weather"

  spec.bindir        = "bin"
  spec.executables   << "damn-weather"
  spec.require_paths = ["lib", "bin"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "mm_geoip", "= 0.1.1"
  spec.add_dependency "slop", "~> 4.2"
  spec.add_dependency "terminal-table", "~> 1.5"
end
