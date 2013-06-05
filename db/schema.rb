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

ActiveRecord::Schema.define(:version => 20130605035854) do

  create_table "geonames", :force => true do |t|
    t.integer  "feature_id"
    t.string   "feature_name"
    t.string   "feature_class"
    t.string   "state_alpha",     :limit => 2
    t.integer  "state_numeric"
    t.string   "county_name"
    t.integer  "county_numeric"
    t.text     "primary_lat_dms"
    t.text     "prim_long_dms"
    t.text     "prim_lat_dec"
    t.text     "prim_long_dec"
    t.text     "source_lat_dms"
    t.text     "source_long_dms"
    t.text     "source_lat_dec"
    t.text     "source_long_dec"
    t.integer  "elev_in_m"
    t.integer  "elev_in_ft"
    t.string   "map_name"
    t.datetime "date_created"
    t.datetime "date_edited"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

end
