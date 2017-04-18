ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require 'sinatra/partial'
require 'sinatra/flash'
require 'data_mapper'
require_relative 'controllers/pads'
require_relative 'controllers/users'
require_relative 'controllers/sessions'
require_relative 'models/user'
require_relative 'server'
require_relative 'data_mapper_setup'

class PoochPads < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__))
  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    redirect('/pads')
  end

  run! if app_file == $0
end
