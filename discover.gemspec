# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "discover/version"

Gem::Specification.new do |s|
  s.name        = "discover"
  s.version     = Discover::VERSION
  s.authors     = ["Jonathan Lozinski"]
  s.email       = ["jonathan.lozinski@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Discover Test Framework}
  s.description = %q{Discover is an exercise in developing a BDD/TDD framework, using BDD/TDD principles, to discover what that might reveal about the way I approach BDD/TDD.}

  s.rubyforge_project = "discover"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
