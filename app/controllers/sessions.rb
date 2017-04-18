class PoochPads < Sinatra::Base

  get '/sessions/new' do
    erb :'/sessions/new'
  end

  post '/sessions' do
    user = User.authenticate(params[:email],
                            params[:password])
    if user
      session[:user_id] = user.id
      redirect to '/pads'
    else
      erb :'/sessions/new'
    end
  end

  delete '/sessions' do
  session[:user_id] = nil
  # flash.keep[:notice] = 'You have successfully signed out'
  redirect to '/sessions/new'
end

end
