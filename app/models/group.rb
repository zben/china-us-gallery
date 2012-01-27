class Group
  include Mongoid::Document
  field :name, :type => String
  belongs_to :user
  has_many :photos

end




