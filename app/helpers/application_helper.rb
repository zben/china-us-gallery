module ApplicationHelper
  def update_tags(photo, params)
    photo.tags = []
    params[:tags].split(",").each do |tag_name|
        unless tag_name.strip.empty?
          new_tag = Tag.find_or_create_by(name: tag_name) unless tag_name=="Enter tags here" 
          photo.tags << new_tag
        end
    end
    logger.info "as_values_#{photo.id.to_s}".to_sym  
    params["as_values_#{photo.id.to_s}".to_sym].split(",").each do |tag_id|
      if tag_id.to_f!=0
        tag = Tag.find(tag_id)
        photo.tags << tag unless photo.tags.include?(tag) 
      elsif !tag_id.strip.empty?
        new_tag = Tag.find_or_create_by(name: tag_id)
        photo.tags << new_tag
      end   
    end
  end
  
  
    

  
  
end
