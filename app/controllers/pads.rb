class PoochPads < Sinatra::Base

  get '/pads' do
    @pads = Pad.all
    erb :'pads/index'
  end

  get '/pads/new' do
    erb :'pads/new'
  end

  post '/pads' do
    pad = Pad.new(name: params[:name])
    # pad.save
    redirect '/pads'
  end
end
