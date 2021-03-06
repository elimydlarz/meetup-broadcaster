require 'rack/test'
require 'rspec'
require 'rspec/its'
require 'byebug'
require_relative '../meetcaster'

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end

RSpec.configure { |c| c.include RSpecMixin }
