class Pad

  include DataMapper::Resource

  belongs_to :user

  property :id, Serial
  property :name, String
  property :price, Integer
  property :location, String
  property :about, Text
  property :available, Boolean, :default => true

  def switch_availability
    self.available = false
  end

end
