class Tag
  include Mongoid::Document
  include Mongoid::Timestamps 
  field :name, :type => String
  belongs_to :user
  has_and_belongs_to_many :photos
end




