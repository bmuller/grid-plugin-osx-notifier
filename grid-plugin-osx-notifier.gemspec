$:.push File.expand_path("../lib", __FILE__)
require "grid-plugin-osx-notifier"
require 'rake'
require 'date'

Gem::Specification.new do |s|
  s.name        = "grid-plugin-osx-notifier"
  s.date        = Date.today.to_s
  s.version     = Grid::Plugin::OSXNotifier::VERSION
  s.authors     = ["Brian Muller"]
  s.email       = ["bamuller@gmail.com"]
  s.homepage    = ""
  s.summary     = "A grid module that sends a notification when there are new messages."
  s.description = "A grid module that sends a notification when there are new messages."

  s.rubyforge_project = "grid-plugin-osx-notifier"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  s.add_dependency("gridcli", ">= 0.1.0")
  s.add_dependency("terminal-notifier", ">= 1.4.2")
end
