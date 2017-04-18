class PoochPads < Sinatra::Base
  register Sinatra::Partial

  set :partial_template_engine, :erb

  enable :partial_underscores
end
