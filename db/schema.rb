# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140503162806) do

  create_table "hints", :force => true do |t|
    t.integer  "post_id"
    t.string   "image"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "monday_title"
    t.string   "tuesday_title"
    t.string   "wednesday_title"
    t.string   "thursday_title"
    t.string   "friday_title"
    t.string   "member_title"
    t.string   "thumbnail"
    t.string   "first_place"
    t.string   "second_place"
    t.string   "third_place"
    t.string   "fourth_place"
    t.string   "fifth_place"
    t.string   "place_thumbnail"
    t.string   "place_sprite"
    t.string   "finder"
    t.string   "facebook"
    t.string   "coupon_sub"
    t.string   "first_sub"
    t.string   "second_sub"
    t.string   "third_sub"
    t.string   "fourth_sub"
    t.string   "fifth_sub"
    t.string   "fifth_body"
    t.string   "fourth_body"
    t.string   "third_body"
    t.string   "second_body"
    t.string   "first_body"
    t.string   "coupon_body"
    t.string   "members_coupon"
  end

  create_table "posts", :force => true do |t|
    t.string   "album_title"
    t.string   "album_cover"
    t.text     "album_review"
    t.string   "place_title"
    t.text     "place_description"
    t.text     "pinpoint_description"
    t.string   "rdio"
    t.string   "city"
    t.string   "hidden_place"
    t.text     "map"
    t.text     "pinpoint_map"
    t.datetime "created_at",           :null => false
    t.boolean  "found"
    t.string   "url"
    t.datetime "updated_at",           :null => false
    t.string   "finder"
    t.string   "week_name"
    t.integer  "week"
    t.string   "review_link"
    t.datetime "sun_open"
    t.datetime "sun_close"
    t.datetime "mon_close"
    t.datetime "mon_open"
    t.datetime "tue_open"
    t.datetime "tue_close"
    t.datetime "wed_close"
    t.datetime "wed_open"
    t.datetime "thu_open"
    t.datetime "thu_close"
    t.datetime "fri_close"
    t.datetime "fri_open"
    t.datetime "sat_open"
    t.datetime "sat_close"
  end

  create_table "writers", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
