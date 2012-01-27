class GroupsController < ApplicationController
  def new
    @group = Group.create
    @photo = @group.photos.new
  end
  
  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      redirect_to @photo.group
    else
      redirect_to :new
    end
  end
  
  def show
    @group = Group.find(params[:id])
    @groups = Group.all-@group.to_a
    
    @china_photos = @group.photos.by_country("China") 
    @us_photos = @group.photos.by_country("US")
    @new_photo = Group.new.photos.new
    @new_china_related = @group.photos.new(:country_id=>Country.where(name: "China")[0].id)
    @new_us_related = @group.photos.new(:country_id=>Country.where(name: "US")[0].id)
  end
  
  def index
    @groups = Group.all
  end

end
