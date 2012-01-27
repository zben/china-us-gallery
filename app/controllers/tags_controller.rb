class TagsController < ApplicationController
  def list
    render :json=>Tag.find(:all, :conditions => {:name => /#{params[:q]}/i})
  end
  
  def show
    @tag=Tag.find(params[:id])
    @main_photo = @tag.photos[0]
    @other_photos = @tag.photos.skip(1)
  end
 
end
