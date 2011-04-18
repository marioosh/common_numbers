# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "common_numbers/version"

Gem::Specification.new do |s|
  s.name        = "common_numbers"
  s.version     = CommonNumbers::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mariusz Nosinski"]
  s.email       = ["marioosh@5dots.pl"]
  s.homepage    = "http://github.com/marioosh/common_numbers"
  s.summary     = %q{Basic library to validate numbers like PESEL, NIP, etc}
  s.description = %q{Common Numbers validates popular numbers like polish PESEL, NIP, REGON, or global ISBN, EAN, etc.}

  s.rubyforge_project = "common_numbers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
