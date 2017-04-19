class Pad

  include DataMapper::Resource

  belongs_to :user

  property :id, Serial
  property :name, String
  property :price, Integer
  property :about, Text

end
