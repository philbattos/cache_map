#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

CacheMappr::Application.load_tasks

desc "import geoname data"
task :import => :environment do

  # build the right path from the root of my rails project
  # file = File.open("/public/CO_features_small_sample.txt")
  indexes = [:feature_id, :feature_name, :feature_class, :state_alpha]
  geo_data = {}
  @geonames = File.open("public/CO_features_small_sample.txt")
  # readlines
  @geonames.lines.each do |line|
    geo_data[indexes.pop]=line.chomp
  end
  @geonames.close

  Geoname.create!(geo_data)
  # Model.create {}

  # attrs = line.split("|")
  # g = Geoname.find_or_initialize_by_identifier(attrs[0])
  # g.feature_id = attrs[1]
  # g.feature_name = attrs[2]
  # g.feature_class = attrs[3]
  # g.state_alpha = attrs[4]
  # g.state_numeric = attrs[5]
  # g.county_name = attrs[6]
  # g.county_numeric = attrs[7]
  # g.primary_lat_dms = attrs[8]
  # g.prim_long_dms = attrs[9]
  # g.prim_lat_dec = attrs[10]
  # g.prim_long_dec = attrs[11]
  # g.source_lat_dms = attrs[12]
  # g.source_long_dms = attrs[13]
  # g.source_lat_dec = attrs[14]
  # g.source_long_dec = attrs[15]
  # g.elev_in_m = attrs[16]
  # g.elev_in_ft = attrs[17]
  # g.map_name = attrs[18]
  # g.date_created = attrs[19]
  # g.date_edited = attrs[20]

  # g.save!

end
