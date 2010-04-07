# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'version'
 
Gem::Specification.new do |s|
  s.name        = "assert_acceptable"
  s.version     = VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew O'Brien"]
  s.email       = ["obrien.andrew@gmail.com"]
  s.homepage    = "http://github.com/AndrewO/assert_acceptable"
  s.summary     = "An assertion that loads a resource into a small gui for the user to load."
  s.description = ""
 
  s.required_rubygems_version = ">= 1.3.5"
 
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.textile)
  s.executables  = ['assert_acceptable']
  s.require_path = 'lib'
end
