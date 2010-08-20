require 'rubygems'
require 'mocha'
require 'ruby-debug'

$:.unshift File.expand_path('../lib', __FILE__)
require 'mapquest_directions'

MAPQUEST_KEY = "replace_me"
# http://developer.mapquest.com/

Spec::Runner.configure do |config|
  config.mock_with :mocha
end
