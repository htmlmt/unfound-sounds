class PagesController < ApplicationController
  helper PagesHelper
  # before_filter :authorize, :only => [:add_album, :edit_album, :update_album, :found_album, :delete_album]
  def home
    @unfound = Post.where("found = ?", 'f')
    if @unfound != []
      @albums = Post.where("found = ?", 'f').order("created_at DESC").limit(3)
      @found = Post.where("found = ?", 't')
    else
      @title = "#{@week}"

      @albums = Post.where("found = ?", 't').order("created_at DESC").limit(3)
    end
  end
  
  def week
    @albums = Post.where("week = ?", params[:id]).limit(3)
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
    @hint = Hint.find_by_post_id(@album.id)
    @title = "#{@album.album_title}"
    @album_city = Post.where("found = ?", 'f').where("city = ?", @album.city).where("id != ?", @album.id)
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def edit
    @album = Post.find_by_url(params[:url])
    @title = "Edit #{@album.album_title}"
    @hint = Hint.find_by_post_id(@album.id)
  end
  
  def add
    @title = "Add a new album"
  end
  
  def save_album
    album_title = params[:album_title]
    album_cover = params[:album_cover]
    album_review = params[:album_review]
    place_title = params[:place_title]
    pinpoint_description = params[:pinpoint_description]
    rdio = params[:rdio]
    hidden_place = params[:hidden_place]
    image = params[:image]
    place_description = params[:place_description]
    monday_title = params[:monday_title]
    tuesday_title = params[:tuesday_title]
    wednesday_title = params[:wednesday_title]
    thursday_title = params[:thursday_title]
    friday_title = params[:friday_title]
    member_title = params[:member_title]
    thumbnail = params[:thumbnail]
    week = params[:week]
    week_name = params[:week_name]
    
    album = Post.new({
      :album_title => album_title, 
      :album_cover => album_cover, 
      :album_review => album_review, 
      :place_title => place_title, 
      :place_description => place_description, 
      :pinpoint_description => pinpoint_description, 
      :rdio => rdio, 
      :hidden_place => hidden_place, 
      :found => 0, 
      :url => "#{album_title.gsub(' ', '-').gsub(/[^\w-]/, '').downcase}",
      :week => week,
      :week_name => week_name
      })
    album.save
    
    hint = Hint.new({
      :post_id => album.id,
      :image => image,
      :monday_title => monday_title,
      :tuesday_title => tuesday_title,
      :wednesday_title => wednesday_title,
      :thursday_title => thursday_title,
      :friday_title => friday_title,
      :member_title => member_title,
      :thumbnail => thumbnail
    })
    hint.save
    
    redirect_to "/"
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
    image = params[:image]
    review_link = params[:review_link]
    monday_title = params[:monday_title]
    tuesday_title = params[:tuesday_title]
    wednesday_title = params[:wednesday_title]
    thursday_title = params[:thursday_title]
    friday_title = params[:friday_title]
    member_title = params[:member_title]
    thumbnail = params[:thumbnail]
    week = params[:week]
    week_name = params[:week_name]
    
    album = Post.find_by_url(params[:url])
    hint = Hint.find_by_post_id(album.id)
    
    album.update_attributes({
      :album_title => album_title, 
      :album_cover => album_cover, 
      :album_review => album_review, 
      :place_title => place_title, 
      :place_description => place_description, 
      :pinpoint_description => pinpoint_description, 
      :rdio => rdio,
      :review_link => review_link,
      :hidden_place => hidden_place, 
      :map => map, 
      :pinpoint_map => pinpoint_map,
      :week => week,
      :week_name => week_name
      })
      
    hint.update_attributes({
      :post_id => album.id,
      :image => image,
      :monday_title => monday_title,
      :tuesday_title => tuesday_title,
      :wednesday_title => wednesday_title,
      :thursday_title => thursday_title,
      :friday_title => friday_title,
      :member_title => member_title,
      :thumbnail => thumbnail
    })
    
    redirect_to("/album/#{params[:url]}")
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