# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{frogger}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Richie Khoo"]
  s.date = %q{2011-06-28}
  s.description = %q{Navigating noise in your log files can be like trying to cross a busy road and avoid the cars. Frogger makes your log files more fun by adding some good ol' 8 bit color and a bit of formatting.}
  s.email = %q{evolve2k@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.textile"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.textile",
    "Rakefile",
    "VERSION",
    "features/enhanced_logger.feature",
    "features/step_definitions/enhanced_logging_steps.rb",
    "features/support/env.rb",
    "frogger.gemspec",
    "lib/frogger.rb",
    "lib/frogger/cucumber.rb",
    "lib/frogger/frog.rb",
    "spec/frogger/frog_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/evolve2k/frogger}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Frogger makes logs easier to navigate.}
  s.test_files = [
    "spec/frogger/frog_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<colored>, [">= 1.2"])
      s.add_runtime_dependency(%q<cucumber>, [">= 0.10.5"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rspec>, ["= 2.6.0"])
    else
      s.add_dependency(%q<colored>, [">= 1.2"])
      s.add_dependency(%q<cucumber>, [">= 0.10.5"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rspec>, ["= 2.6.0"])
    end
  else
    s.add_dependency(%q<colored>, [">= 1.2"])
    s.add_dependency(%q<cucumber>, [">= 0.10.5"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rspec>, ["= 2.6.0"])
  end
end

