class PhotosController < ApplicationController
  include ApplicationHelper
  def new
    @group = Group.create
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.new(params[:photo])
    @group = Group.find_or_initialize_by(id: params[:photo][:group_id])
    if @photo.save and @group.save
      update_tags(@photo, params)
      redirect_to @group
    else
      redirect_to :back
    end
  end
  
  def show
    @photo = Photo.find(params[:id])
    @similar_photos = @photo.group.photos
  end
  
  def index
    @photos = Photo.all
  end

end
