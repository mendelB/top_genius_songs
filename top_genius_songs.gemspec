# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'top_genius_songs/version'

Gem::Specification.new do |spec|
  spec.name          = "top-genius-songs"
  spec.version       = TopGeniusSongs::VERSION
  spec.authors       = ["mendelB"]
  spec.email         = ["mendelblesofsky@gmail.com"]

  spec.summary       = %q{Scrapes the songs on the 'genius.com' homepage}
  spec.description   = %q{Lists top songs on Genius, and allows user to select song for lyrics}
  spec.homepage      = "https://github.com/mendelB/top_genius_songs"
  spec.license       = "MIT"
  spec.executables   = ["top-genius-songs"]

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib", "lib/top_genius_songs"]

  spec.add_development_dependency "nokogiri", "~> 0"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0"
end
