require 'database_cleaner'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './app/app'
require 'pry'

Capybara.app = PoochPads
