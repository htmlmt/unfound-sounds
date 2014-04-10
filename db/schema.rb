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

ActiveRecord::Schema.define(:version => 20140409195401) do

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
  end

  create_table "writers", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
