class Country
  include Mongoid::Document
  field :_id, :type => Integer
  field :name, :type => String
  has_many :photos
end




