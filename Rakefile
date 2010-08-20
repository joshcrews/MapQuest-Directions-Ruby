# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('mapquest_directions', '0.1.0') do |p|
  p.description    = "Ruby-wrapper for MapQuest Directions API.  Can return the drive time and driving distance between two places"
  p.url            = "http://github.com/joshcrews/MapQuest-Directions-Ruby"
  p.author         = "Josh Crews"
  p.email          = "josh@joshcrews.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = ['nokogiri >=1.4.1']
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }