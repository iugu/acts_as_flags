# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "acts_as_flags/version"

Gem::Specification.new do |s|
  s.name        = "acts_as_flags"
  s.version     = ActsAsFlags::VERSION
  s.authors     = ["alepaez"]
  s.email       = ["alepaezseq@gmail.com"]
  s.homepage    = "https://github.com/iugu/acts_as_flags"
  s.summary     = %q{Make ActiveRecord Attributes to act as flags}
  s.description = %q{Make ActiveRecord Attributes to act as flags}

  s.rubyforge_project = "acts_as_flags"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
