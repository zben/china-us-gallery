class Rating
  include Mongoid::Document
  include Mongoid::Timestamps 
  field :rating, :type => String
  field :description, :type => String
  field :is_group_owner, :type=>Boolean
  belongs_to :user
  belongs_to :photo
  
end




