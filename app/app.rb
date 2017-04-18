require 'sinatra/base'
require_relative 'controllers/pads'

class PoochPads < Sinatra::Base
  get '/' do
    redirect('/pads')
  end

  run! if app_file == $0
end
