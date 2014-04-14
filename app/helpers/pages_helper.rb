module PagesHelper
  def title
    if @title
      "#{@title} | Unfound Sounds" 
    else
      "Unfound Sounds"
    end
  end
  
  def format_date(time)
    time.strftime("%B %e, %Y")
  end
  
  def h(text)
    Rack::Utils.escape_html(text)
  end
  
  def unfound_details
    @album = Post.find_by_url(params[:url])
    @date = @album.created_at
    render :partial => "pages/unfound_details", :locals => {:album => @album, :date => @date}
  end
  
  def found_details
    @album = Post.find_by_url(params[:url])
    @hint = Hint.find_by_post_id(@album.id)
    render :partial => "pages/found_details", :locals => {:album => @album, :hint => @hint}
  end
  
  def unfound_hints
    @album = Post.find_by_url(params[:url])
    @hint = Hint.find_by_post_id(@album.id)
    render :partial => "pages/unfound_hints", :locals => {:album => @album, :hint => @hint}
  end
  
  def found_place
    album = Post.find_by_url(params[:url])
    @hint = Hint.find_by_post_id(album.id)
    render :partial => "pages/found_place", :locals => {:hint => @hint}
  end
  
end
