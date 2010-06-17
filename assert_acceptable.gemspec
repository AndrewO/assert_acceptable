# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'version'
 
Gem::Specification.new do |s|
  s.name        = "assert_acceptable"
  s.version     = AssertAcceptable::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew O'Brien"]
  s.email       = ["obrien.andrew@gmail.com"]
  s.homepage    = "http://github.com/AndrewO/assert_acceptable"
  s.summary     = "An assertion that loads an image into a small Shoes-based gui for the user to load."
  s.description = "A Test::Unit assertion that opens an image in a Shoes GUI with Yes/No buttons that determine if a test succeeds"
 
  s.required_rubygems_version = ">= 1.3.5"
 
  s.files        = Dir.glob("{bin,lib,test}/**/*") + %w(LICENSE README.textile)
  s.require_path = 'lib'
end
