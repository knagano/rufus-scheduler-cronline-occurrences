# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rufus/scheduler/cronline/occurrences/version'

Gem::Specification.new do |spec|
  spec.name          = "rufus-scheduler-cronline-occurrences"
  spec.version       = Rufus::Scheduler::CronLine::Occurrences::VERSION
  spec.authors       = ["Keiichiro Nagano"]
  spec.email         = ["knagano@CPAN.org"]
  spec.summary       = %q{Rufus::Scheduler::CronLine#occurrences}
  spec.description   = %q{Rufus::Scheduler::CronLine#occurrences}
  spec.homepage      = "https://github.com/knagano/rufus-scheduler-cronline-occurrences"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rufus-scheduler', "~> 3.4"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '>= 2.13.0'
end
