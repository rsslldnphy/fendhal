require 'simplecov'
SimpleCov.start do
  add_filter '/spec'
end

require 'rspec'
require 'fendhal'

RSpec.configure do |config|
  config.order = :rand
  config.color_enabled = true
end
