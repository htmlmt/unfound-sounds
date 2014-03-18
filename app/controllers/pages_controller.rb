class PagesController < ApplicationController
  helper PagesHelper
  def home
    @unfound = Post.where("found = ?", 'f')
    if @unfound != []
      @albums = Post.where("found = ?", 'f').order("created_at DESC").limit(9)
      @found = Post.where("found = ?", 't')
    else
      @title = "Found sounds"

      @albums = Post.where("found = ?", 't').order("created_at DESC").limit(9)
    end
  end
  
  def found
    @title = "Found sounds"
    
    @albums = Post.where("found = ?", 't').order("created_at DESC").limit(9)
  end
  
  def city_unfound
    @city = (params[:city]).capitalize.gsub("-", " ")
    @title = "Unfound sounds in #{@city}"
    
    @albums = Post.where("found = ?", 'f').where("city = ?", params[:city]).order("created_at DESC").limit(9)
    @found = Post.where("found = ?", 't')
  end
  
  def city_found
    @city = (params[:city]).capitalize.gsub("-", " ")
    @title = "Found sounds in #{@city}"
    
    @albums = Post.where("found = ?", 't').where("city = ?", params[:city]).order("created_at DESC").limit(9)
  end
  
  def discover
    @title = "Discover"
  end
  
  def donate
    @title = "Donate"
  end
  
  def album
    @album = Post.find_by_url(params[:url])
    @title = "#{@album.album_title}"
    @album_city = Post.where("found = ?", 'f').where("city = ?", @album.city).where("id != ?", @album.id)
  end
  
  def edit
    @album = Post.find_by_url(params[:url])
    @title = "Edit #{@album.album_title}"
  end
  
  def add
    @title = "Add a new album"
  end
  
  def save_album
    album_title = params[:album_title]
    album_cover = params[:album_cover]
    album_review = params[:album_review]
    place_title = params[:place_title]
    place_description = params[:place_description]
    pinpoint_description = params[:pinpoint_description]
    rdio = params[:rdio]
    city = params[:city]
    hidden_place = params[:hidden_place]
    map = params[:map]
    pinpoint_map = params[:pinpoint_map]
    
    album = Post.new({
      :album_title => album_title, 
      :album_cover => album_cover, 
      :album_review => album_review, 
      :place_title => place_title, 
      :place_description => place_description, 
      :pinpoint_description => pinpoint_description, 
      :rdio => rdio, 
      :city => city, 
      :hidden_place => hidden_place, 
      :map => map, 
      :pinpoint_map => pinpoint_map, 
      :found => 0, 
      :url => "#{album_title.gsub(' ', '-').gsub(/[^\w-]/, '').downcase}"
      })
    album.save
    
    redirect_to "/album/#{@album.url}"
  end
  
  def edit_album
    album_title = params[:album_title]
    album_cover = params[:album_cover]
    album_review = params[:album_review]
    place_title = params[:place_title]
    place_description = params[:place_description]
    pinpoint_description = params[:pinpoint_description]
    rdio = params[:rdio]
    city = params[:city]
    hidden_place = params[:hidden_place]
    map = params[:map]
    pinpoint_map = params[:pinpoint_map]
    
    album = Post.find_by_url(params[:url])
  
    album.update_attributes({
      :album_title => album_title, 
      :album_cover => album_cover, 
      :album_review => album_review, 
      :place_title => place_title, 
      :place_description => place_description, 
      :pinpoint_description => pinpoint_description, 
      :rdio => rdio, 
      :city => city.gsub(' ', '-').gsub(/[^\w-]/, '').downcase, 
      :hidden_place => hidden_place, 
      :map => map, 
      :pinpoint_map => pinpoint_map
      })
    
    redirect to("/album/#{params[:url]}")
  end
  
  def found_album
    album = Post.find_by_url(params[:url])
    
    if params[:found] == "FOUND"
      album.update_attributes({:found => 't'})
      redirect to("/")
    else
      redirect to("/album/#{params[:url]}")
    end
  end
  
  def delete
    album = Post.find_by_url(params[:url])
    
    if params[:delete] == "DELETE"
      album.destroy
      redirect to("/")
    else
      redirect to("/album/#{params[:url]}")
    end
  end
  
end