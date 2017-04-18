require 'database_cleaner'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './app/app'
require 'pry'
require_relative './helpers/listing'

Capybara.app = PoochPads

RSpec.configure do |config|
  config.include ListingHelpers
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end
