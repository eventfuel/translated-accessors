# -*- encoding: utf-8 -*-
require File.expand_path("../lib/translated-accessors/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "translated-accessors"
  s.version     = Translated::Accessors::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Niko Roberts","Tomasz Stachewicz", "Wojciech Pietrzak", "Steve Verlinden", "Robert Pankowecki", "Chris Salzberg"]
  s.email       = ["niko@tasboa.com","tomekrs@o2.pl", "steve.verlinden@gmail.com", "robert.pankowecki@gmail.com", "rpa@gavdi.com", "chrissalzberg@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/translated-accessors"
  s.summary     = "Define methods for accessing translated attributes (without any Globalize dependency)"
  s.description = "Define methods for accessing translated attributes (without any Globalize dependency)"

  s.required_rubygems_version = ">= 1.3"
  s.rubyforge_project         = "translated-accessors"

  if ENV['RAILS_4_0']
    s.add_dependency 'activerecord', '~> 4.0.0'
    s.add_dependency 'activemodel', '~> 4.0.0'
  elsif ENV['RAILS_4_1']
    s.add_dependency 'activerecord', '~> 4.1.0.beta1'
    s.add_dependency 'activemodel', '~> 4.1.0.beta1'
  else
    s.add_dependency 'activerecord', '>= 4.0.0', '< 5'
    s.add_dependency 'activemodel', '>= 4.0.0', '< 5'
  end

  s.add_development_dependency "bundler", ">= 1.3.5"
  s.add_development_dependency "rake", "~> 0.9.2"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'database_cleaner', '~> 1.2.0'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-reporters'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
