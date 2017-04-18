class PoochPads < Sinatra::Base
  get '/pads' do
    erb :'/pads'
  end
end
