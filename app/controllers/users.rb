class PoochPads < Sinatra::Base

  get '/users/new' do
    erb :'/users/new'
  end

  post '/users' do
    @user = User.new(email: params[:email])
    @user.save
    redirect to ('/')
  end


end
