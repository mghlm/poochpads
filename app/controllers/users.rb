class PoochPads < Sinatra::Base

  get '/users/new' do
    erb :'/users/new'
  end

  post '/users' do
    @user = User.new(email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    @user.save
    redirect to ('/')
  end


end
