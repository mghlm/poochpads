class PoochPads < Sinatra::Base


  get '/pads' do
    @pads = Pad.all
    erb :'pads/index'
  end

  get '/pads/new' do
    unless current_user
      flash.keep[:login] = 'Please sign up or log in to add a pad'
      redirect '/users/new'
    else
      erb :'pads/new'
    end
  end

  post '/pads' do
    pad = Pad.create(name: params[:name],
                     price: params[:price],
                     location: params[:location],
                     about: params[:about])
    current_user.pads << pad
    current_user.save
    redirect '/pads'
  end

  post '/pads/:id' do
    session[:pad_id] = params[:id]
    redirect '/pads/request'
  end

  get '/pads/request' do
    @selected_pad = Pad.first(id: session[:pad_id])
    erb :'pads/request'
  end

  post '/confirmation' do
    confirmed_pad = Pad.first(id: session[:pad_id])
    this_booking = Booking.create(date: params[:booking_date])
    current_user.bookings << this_booking
    confirmed_pad.bookings << this_booking
    current_user.save
    redirect '/pads/confirmation'
  end

  get '/pads/confirmation' do
    confirmed_pad = Booking.first(id: session[:pad_id])
    # require 'pry'; binding.pry
    # confirmed_pad.switch_availability
    # confirmed_pad.save
    erb :'pads/confirmation'
  end


end
