$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "greyhole/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "greyhole"
  s.version     = Greyhole::VERSION
  s.authors     = ["Carlos Puchol"]
  s.email       = ["cpg+git@amahi.org"]
  s.homepage    = "http://www.amahi.org/apps/yourapp"
  s.license     = "AGPLv3"
  s.summary     = %{Greyhole Management Area.}
  s.description = %{This is an Amahi 7 platform plugin that manages Greyhole.}

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
end
