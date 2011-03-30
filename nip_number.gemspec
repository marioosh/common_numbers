# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nip_number/version"

Gem::Specification.new do |s|
  s.name        = "nip_number"
  s.version     = NipNumber::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mariusz Nosinski"]
  s.email       = ["marioosh@5dots.pl"]
  s.homepage    = ""
  s.summary     = %q{Basic library to validate polish NIP number}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "nip_number"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
