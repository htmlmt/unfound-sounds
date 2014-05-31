class PagesController < ApplicationController
  helper PagesHelper
  layout "album", :only => :album

  def home
    @albums = Post.order("created_at DESC").limit(3)
    
    if current_user 
      if current_user.email == "mikejtodd@gmail.com"
        @allow_edit = true
      end
    end
  end
  
  def week
    @albums = Post.where("week = ?", params[:id]).limit(3)
    @title = "Week #{@albums.first.week}: #{@albums.first.week_name}"
    @week = params[:id]
    max = Post.order("created_at DESC").limit(3)
    @max = max.first.week
    
    if current_user 
      if current_user.email == "mikejtodd@gmail.com"
        @allow_edit = true
      end
    end
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def album
    @album = Post.find_by_url(params[:url])
    @title = "#{@album.album_title}"
    @hint = Hint.find_by_post_id(@album.id)
    
    if current_user 
      if current_user.email == "mikejtodd@gmail.com"
        @allow_edit = true
      end
    end
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def add
    @title = "Add a new album"
    
    if current_user 
      if current_user.email == "mikejtodd@gmail.com"
        @allow_edit = true
      end
    end
  end
  
  def edit
    @album = Post.find_by_url(params[:url])
    @title = "Edit #{@album.album_title}"
    @hint = Hint.find_by_post_id(@album.id)
    
    if current_user 
      if current_user.email == "mikejtodd@gmail.com"
        @allow_edit = true
      end
    end
  end
  
  def discover
    @title = "Discover"
  end
  
  def donate
    @title = "Donate"
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
    city = params[:city]
    week_name = params[:week_name]
    first_place = params[:first_place]
    second_place = params[:second_place]
    third_place = params[:third_place]
    fourth_place = params[:fourth_place]
    fifth_place = params[:fifth_place]
    place_thumbnail = params[:place_thumbnail]
    place_sprite = params[:place_sprite]
    finder = params[:finder]
    facebook = params[:facebook]
    first_body = params[:first_body]
    second_body = params[:second_body]
    third_body = params[:third_body]
    fourth_body = params[:fourth_body]
    fifth_body = params[:fifth_body]
    coupon_body = params[:coupon_body]
    first_sub = params[:first_sub]
    second_sub = params[:second_sub]
    third_sub = params[:third_sub]
    fourth_sub = params[:fourth_sub]
    fifth_sub = params[:fifth_sub]
    coupon_sub = params[:coupon_sub]
    members_coupon = params[:members_coupon]
    if params[:sun_open] != ""
      sun_open = Time.parse(params[:sun_open])
      sun_open = sun_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:sun_close] != ""
      sun_close = Time.parse(params[:sun_close])
      sun_close = sun_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:mon_open] != ""
      mon_open = Time.parse(params[:mon_open])
      mon_open = mon_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:mon_close] != ""
      mon_close = Time.parse(params[:mon_close])
      mon_close = mon_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:tue_open] != ""
      tue_open = Time.parse(params[:tue_open])
      tue_open = tue_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:tue_close] != ""
      tue_close = Time.parse(params[:tue_close])
      tue_close = tue_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:wed_open] != ""
      wed_open = Time.parse(params[:wed_open])
      wed_open = wed_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:wed_close] != ""
      wed_close = Time.parse(params[:wed_close])
      wed_close = wed_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:thu_open] != ""
      thu_open = Time.parse(params[:thu_open])
      thu_open = thu_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:thu_close] != ""
      thu_close = Time.parse(params[:thu_close])
      thu_close = thu_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:fri_open] != ""
      fri_open = Time.parse(params[:fri_open])
      fri_open = fri_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:fri_close] != ""
      fri_close = Time.parse(params[:fri_close])
      fri_close = fri_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:sat_open] != ""
      sat_open = Time.parse(params[:sat_open])
      sat_open = sat_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:sat_close] != ""
      sat_close = Time.parse(params[:sat_close])
      sat_close = sat_close.in_time_zone("Central Time (US & Canada)")
    end
    
    album = Post.new({
      :album_title => album_title, 
      :album_cover => album_cover, 
      :album_review => album_review, 
      :place_title => place_title, 
      :place_description => place_description, 
      :pinpoint_description => pinpoint_description, 
      :rdio => rdio, 
      :hidden_place => hidden_place, 
      :found => false, 
      :url => "#{album_title.gsub(' ', '-').gsub(/[^\w-]/, '').downcase}",
      :week => week,
      :city => city,
      :week_name => week_name,
      :sun_open => sun_open,
      :sun_close => sun_close,
      :mon_open => mon_open,
      :mon_close => mon_close,
      :tue_open => tue_open,
      :tue_close => tue_close,
      :wed_open => wed_open,
      :wed_close => wed_close,
      :thu_open => thu_open,
      :thu_close => thu_close,
      :fri_open => fri_open,
      :fri_close => fri_close,
      :sat_open => sat_open,
      :sat_close => sat_close
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
      :thumbnail => thumbnail,
      :first_place => first_place,
      :second_place => second_place,
      :third_place => third_place,
      :fourth_place => fourth_place,
      :fifth_place => fifth_place,
      :place_thumbnail => place_thumbnail,
      :place_sprite => place_sprite,
      :finder => finder,
      :facebook => facebook,
      :first_body => first_body,
      :second_body => second_body,
      :third_body => third_body,
      :fourth_body => fourth_body,
      :fifth_body => fifth_body,
      :coupon_body => coupon_body,
      :first_sub => first_sub,
      :second_sub => second_sub,
      :third_sub => third_sub,
      :fourth_sub => fourth_sub,
      :fifth_sub => fifth_sub,
      :coupon_sub => coupon_sub,
      :members_coupon => members_coupon
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
    first_place = params[:first_place]
    second_place = params[:second_place]
    third_place = params[:third_place]
    fourth_place = params[:fourth_place]
    fifth_place = params[:fifth_place]
    place_thumbnail = params[:place_thumbnail]
    place_sprite = params[:place_sprite]
    finder = params[:finder]
    facebook = params[:facebook]
    first_body = params[:first_body]
    second_body = params[:second_body]
    third_body = params[:third_body]
    fourth_body = params[:fourth_body]
    fifth_body = params[:fifth_body]
    coupon_body = params[:coupon_body]
    first_sub = params[:first_sub]
    second_sub = params[:second_sub]
    third_sub = params[:third_sub]
    fourth_sub = params[:fourth_sub]
    fifth_sub = params[:fifth_sub]
    coupon_sub = params[:coupon_sub]
    members_coupon = params[:members_coupon]
    if params[:sun_open] != ""
    sun_open = Time.parse(params[:sun_open])
    sun_open = sun_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:sun_close] != ""
    sun_close = Time.parse(params[:sun_close])
    sun_close = sun_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:mon_open] != ""
    mon_open = Time.parse(params[:mon_open])
    mon_open = mon_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:mon_close] != ""
    mon_close = Time.parse(params[:mon_close])
    mon_close = mon_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:tue_open] != ""
    tue_open = Time.parse(params[:tue_open])
    tue_open = tue_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:tue_close] != ""
    tue_close = Time.parse(params[:tue_close])
    tue_close = tue_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:wed_open] != ""
    wed_open = Time.parse(params[:wed_open])
    wed_open = wed_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:wed_close] != ""
    wed_close = Time.parse(params[:wed_close])
    wed_close = wed_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:thu_open] != ""
    thu_open = Time.parse(params[:thu_open])
    thu_open = thu_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:thu_close] != ""
    thu_close = Time.parse(params[:thu_close])
    thu_close = thu_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:fri_open] != ""
    fri_open = Time.parse(params[:fri_open])
    fri_open = fri_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:fri_close] != ""
    fri_close = Time.parse(params[:fri_close])
    fri_close = fri_close.in_time_zone("Central Time (US & Canada)")
    end
    if params[:sat_open] != ""
    sat_open = Time.parse(params[:sat_open])
    sat_open = sat_open.in_time_zone("Central Time (US & Canada)")
    end
    if params[:sat_close] != ""
    sat_close = Time.parse(params[:sat_close])
    sat_close = sat_close.in_time_zone("Central Time (US & Canada)")
    end

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
      :city => city,
      :pinpoint_map => pinpoint_map,
      :week => week,
      :week_name => week_name,
      :sun_open => sun_open,
      :sun_close => sun_close,
      :mon_open => mon_open,
      :mon_close => mon_close,
      :tue_open => tue_open,
      :tue_close => tue_close,
      :wed_open => wed_open,
      :wed_close => wed_close,
      :thu_open => thu_open,
      :thu_close => thu_close,
      :fri_open => fri_open,
      :fri_close => fri_close,
      :sat_open => sat_open,
      :sat_close => sat_close
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
      :thumbnail => thumbnail,
      :first_place => first_place,
      :second_place => second_place,
      :third_place => third_place,
      :fourth_place => fourth_place,
      :fifth_place => fifth_place,
      :place_thumbnail => place_thumbnail,
      :place_sprite => place_sprite,
      :finder => finder,
      :facebook => facebook,
      :first_body => first_body,
      :second_body => second_body,
      :third_body => third_body,
      :fourth_body => fourth_body,
      :fifth_body => fifth_body,
      :coupon_body => coupon_body,
      :first_sub => first_sub,
      :second_sub => second_sub,
      :third_sub => third_sub,
      :fourth_sub => fourth_sub,
      :fifth_sub => fifth_sub,
      :coupon_sub => coupon_sub,
      :members_coupon => members_coupon
      })

      redirect_to("/album/#{params[:url]}")
    end

  def found_album
    album = Post.find_by_url(params[:url])

    if params[:found] == "FOUND"
      album.update_attributes({:found => true})
      redirect_to("/")
    else
      redirect_to("/album/#{params[:url]}")
    end
  end

  def unfound_album
    album = Post.find_by_url(params[:url])

    if params[:unfound] == "UNFOUND"
      album.update_attributes({:found => false})
      redirect_to("/")
    else
      redirect_to("/album/#{params[:url]}")
    end
  end

  def delete
    album = Post.find_by_url(params[:url])
    
    album.destroy
  end

end
