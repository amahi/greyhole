$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "greyhole/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "greyhole"
  s.version     = Greyhole::VERSION
  s.authors     = ["Carlos Puchol"]
  s.email       = ["cpg+git@amahi.org"]
  s.homepage    = "http://www.amahi.org"
  s.license     = "AGPLv3"
  s.summary     = %{Greyhole plugin for the Amahi platform.}
  s.description = %{This is an Amahi 7 platform plugin that implements a management interface for drive pooling, specifically for the Greyhole drive pooling technology.}

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  # s.add_dependency "jquery-rails"

  #s.add_development_dependency "sqlite3"
end
