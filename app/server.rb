class PoochPads < Sinatra::Base
  enable :sessions
  register Sinatra::Partial
  register Sinatra::Flash
  use Rack::MethodOverride
  set :session_secret, 'super secret'
  set :partial_template_engine, :erb
  enable :partial_underscores

  
    helpers do
      def current_user
        @current_user ||= User.get(session[:user_id])
      end
    end

end
