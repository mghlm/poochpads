class PoochPads < Sinatra::Base

  get '/pads' do
    erb :'pads/index'
  end
end
