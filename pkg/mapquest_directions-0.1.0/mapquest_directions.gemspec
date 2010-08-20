# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mapquest_directions}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Josh Crews"]
  s.date = %q{2010-08-19}
  s.description = %q{Ruby-wrapper for MapQuest Directions API.  Can return the drive time and driving distance between two places}
  s.email = %q{josh@joshcrews.com}
  s.extra_rdoc_files = ["README.textile", "lib/mapquest_directions.rb"]
  s.files = ["README.textile", "Rakefile", "init.rb", "lib/mapquest_directions.rb", "spec/lib/mapquest_directions.xml", "spec/lib/mapquest_directions_fail.xml", "spec/lib/mapquest_directions_spec.rb", "spec/spec_helper.rb", "Manifest", "mapquest_directions.gemspec"]
  s.homepage = %q{http://github.com/joshcrews/MapQuest-Directions-Ruby}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Mapquest_directions", "--main", "README.textile"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mapquest_directions}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby-wrapper for MapQuest Directions API.  Can return the drive time and driving distance between two places}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<nokogiri>, [">= 1.4.1"])
    else
      s.add_dependency(%q<nokogiri>, [">= 1.4.1"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 1.4.1"])
  end
end
