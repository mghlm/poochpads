class PoochPads < Sinatra::Base
  register Sinatra::Partial
  enable :sessions
  set :session_secret, 'super secret'

  set :partial_template_engine, :erb

  enable :partial_underscores
end
