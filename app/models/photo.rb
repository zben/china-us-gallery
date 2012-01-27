class Photo
  include Mongoid::Document
  include Mongoid::Timestamps 
  include Mongoid::Paperclip
  field :name, :type => String
  field :description, :type => String
  field :is_group_owner, :type=>Boolean
  belongs_to :user
  belongs_to :group
  belongs_to :country
  has_and_belongs_to_many :tags
  
  if Rails.env.production?  
    has_mongoid_attached_file :attachment,
      :path => ':attachment/:id/:style.:extension',
      :storage => :s3,
      :url => ':s3_alias_url',
      :s3_host_alias => 'something.cloudfront.net',
      :s3_credentials => File.join(Rails.root, 'config','s3.yml'),
      :styles => {
        :original => ['1920x1680>', :jpg],
        :small    => ['100x100#',   :jpg],
        :medium   => ['220x220>',    :jpg],
        :large    => ['500x500>',   :jpg]
      }
  else    
    has_mongoid_attached_file :attachment,
      :styles => {
        :original => ['1920x1680>', :jpg],
        :small    => ['50x50#',   :jpg],
        :medium   => ['200x150',    :jpg],
        :large    => ['500x500>',   :jpg]
      }
  end
  
  def self.by_country country_name
    self.where(:country_id=>Country.where(name: country_name)[0].id)
  end
  
end




