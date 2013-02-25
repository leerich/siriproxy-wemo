# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-wemo"
  s.version     = "1.0.0" 
  s.authors     = ["bobbrodie"]
  s.email       = ["rbrodie85@gmail.com"]
  s.homepage    = "https://github.com/bobbrodie/siriproxy-wemo"
  s.summary     = %q{SiriProxy plugin for Belkin's WeMo}
  s.description = %q{SiriProxy plugin for Belkin's WeMo}

  s.rubyforge_project = ""

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "nokogiri"
  s.add_runtime_dependency "curb"
  s.add_runtime_dependency "simple_upnp"
end
