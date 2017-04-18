class PoochPads < Sinatra::Base

  get '/sessions/new' do
    erb :'/sessions/new'
  end

  post '/sessions' do
    redirect to '/pads'
  end

end
