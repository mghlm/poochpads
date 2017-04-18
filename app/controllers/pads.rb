class PoochPads < Sinatra::Base

  get '/pads' do
    erb :'pads/index'
  end

  get '/pads/new' do
    erb :'pads/new'
  end

  post '/pads' do
    $padname = params[:name]
    redirect '/pads'
  end
end
