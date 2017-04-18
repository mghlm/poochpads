require 'sinatra/base'
require 'sinatra/partial'
require_relative 'controllers/pads'
require_relative 'server'

class PoochPads < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__))
  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    redirect('/pads')
  end

  run! if app_file == $0
end
