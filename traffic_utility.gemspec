# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: traffic_utility 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "traffic_utility"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jun Sugahara"]
  s.date = "2014-02-04"
  s.description = "Entropy calculator, Anderson-Darling-test"
  s.email = "j.sghr.jp@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "example/anderson-darling-test.rb",
    "example/data/gauss.txt",
    "example/tools/gauss.rb",
    "lib/anderson-darling-test/.DS_Store",
    "lib/anderson-darling-test/anderson-darling-test.rb",
    "lib/anderson-darling-test/standard-normal-distribution.rb",
    "lib/anderson-darling-test/stats/.DS_Store",
    "lib/anderson-darling-test/stats/stats.rb",
    "lib/entropy/entropy_calculator.rb",
    "lib/traffic_utility.rb",
    "spec/spec_helper.rb",
    "spec/traffic_util_spec.rb",
    "traffic_util.gemspec"
  ]
  s.homepage = "http://github.com/sugahara/traffic_utility"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.11"
  s.summary = "Traffic Analyse Utility in Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
