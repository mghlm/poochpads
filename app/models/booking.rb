class Booking

  include DataMapper::Resource

  belongs_to :pad

  property :id, Serial
  property :date, String

end
