require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# arkansas_river = Geoname.create!(feature_id: 78956,
#                                  feature_name: 'Arkansas River',
#                                  feature_class: 'Stream',
#                                  state_alpha: 'AR',
#                                  county_name: 'Desha',
#                                  primary_lat_dms: '334630N',
#                                  prim_long_dms: '0910415W',
#                                  prim_lat_dec: 40.7751096,
#                                  prim_long_dec: -110.0709427,
#                                  elev_in_m: 33,
#                                  elev_in_ft: 108,
#                                  map_name: 'Rosedale')

# pinyon_creek = Geoname.create!(feature_id: 169341,
#                                feature_name: 'Pinyon Creek',
#                                feature_class: 'Stream',
#                                state_alpha: 'CO',
#                                county_name: 'Pueblo',
#                                primary_lat_dms: '382430N',
#                                prim_long_dms: '1043602W',
#                                prim_lat_dec: 38.4083339,
#                                prim_long_dec: -104.6005282,
#                                elev_in_m: 1511,
#                                elev_in_ft: 4957,
#                                map_name: 'Pinon')

# pinnacle_ridge = Geoname.create!(feature_id: 169342,
#                                  feature_name: 'Pinnacle Ridge',
#                                  feature_class: 'Ridge',
#                                  state_alpha: 'CO',
#                                  county_name: 'Gunnison',
#                                  primary_lat_dms: '380900N',
#                                  prim_long_dms: '1073032W',
#                                  prim_lat_dec: 38.1499932,
#                                  prim_long_dec: -107.5089482,
#                                  elev_in_m: 3702,
#                                  elev_in_ft: 12146,
#                                  map_name: 'Courthouse Mountain')

# hidden_brook = Geoname.create!(feature_id: 169344,
#                                feature_name: 'Hidden Brook',
#                                feature_class: 'Stream',
#                                state_alpha: 'CO',
#                                county_name: 'Boulder',
#                                primary_lat_dms: '401448N',
#                                prim_long_dms: '1053208W',
#                                prim_lat_dec: 40.2466513,
#                                prim_long_dec: -105.5355555,
#                                elev_in_m: 2625,
#                                elev_in_ft: 8612,
#                                map_name: 'Allenspark')

# Colorado Features
CSV.table('/Users/philbattos/Downloads/CO_Features_small_sample_20130404.txt', col_sep: '|').each do |row|

  Geoname.create! feature_id: row[:feature_id],
                   feature_name: row[:feature_name],
                   feature_class: row[:feature_class],
                   state_alpha: row[:state_alpha],
                   county_name: row[:county_name],
                   primary_lat_dms: row[:primary_lat_dms],
                   prim_long_dms: row[:prim_long_dms],
                   prim_lat_dec: row[:prim_lat_dec],
                   prim_long_dec: row[:prim_long_dec],
                   elev_in_m: row[:elev_in_m],
                   elev_in_ft: row[:elev_in_ft],
                   map_name: row[:map_name]
end

# # Idaho Features
# CSV.table('/Users/philbattos/Downloads/ID_Features_20130404.txt', col_sep: '|').each do |row|

#   Geoname.create! feature_id: row[:feature_id],
#                    feature_name: row[:feature_name],
#                    feature_class: row[:feature_class],
#                    state_alpha: row[:state_alpha],
#                    county_name: row[:county_name],
#                    primary_lat_dms: row[:primary_lat_dms],
#                    prim_long_dms: row[:prim_long_dms],
#                    prim_lat_dec: row[:prim_lat_dec],
#                    prim_long_dec: row[:prim_long_dec],
#                    elev_in_m: row[:elev_in_m],
#                    elev_in_ft: row[:elev_in_ft],
#                    map_name: row[:map_name]
# end

# # Montana Features
# CSV.table('/Users/philbattos/Downloads/CO_Features_20130404.txt', col_sep: '|').each do |row|

#   Geoname.create! feature_id: row[:feature_id],
#                    feature_name: row[:feature_name],
#                    feature_class: row[:feature_class],
#                    state_alpha: row[:state_alpha],
#                    county_name: row[:county_name],
#                    primary_lat_dms: row[:primary_lat_dms],
#                    prim_long_dms: row[:prim_long_dms],
#                    prim_lat_dec: row[:prim_lat_dec],
#                    prim_long_dec: row[:prim_long_dec],
#                    elev_in_m: row[:elev_in_m],
#                    elev_in_ft: row[:elev_in_ft],
#                    map_name: row[:map_name]
# end

# # New Mexico Features
# CSV.table('/Users/philbattos/Downloads/CO_Features_20130404.txt', col_sep: '|').each do |row|

#   Geoname.create! feature_id: row[:feature_id],
#                    feature_name: row[:feature_name],
#                    feature_class: row[:feature_class],
#                    state_alpha: row[:state_alpha],
#                    county_name: row[:county_name],
#                    primary_lat_dms: row[:primary_lat_dms],
#                    prim_long_dms: row[:prim_long_dms],
#                    prim_lat_dec: row[:prim_lat_dec],
#                    prim_long_dec: row[:prim_long_dec],
#                    elev_in_m: row[:elev_in_m],
#                    elev_in_ft: row[:elev_in_ft],
#                    map_name: row[:map_name]
# end

# # Utah Features
# CSV.table('/Users/philbattos/Downloads/CO_Features_20130404.txt', col_sep: '|').each do |row|

#   Geoname.create! feature_id: row[:feature_id],
#                    feature_name: row[:feature_name],
#                    feature_class: row[:feature_class],
#                    state_alpha: row[:state_alpha],
#                    county_name: row[:county_name],
#                    primary_lat_dms: row[:primary_lat_dms],
#                    prim_long_dms: row[:prim_long_dms],
#                    prim_lat_dec: row[:prim_lat_dec],
#                    prim_long_dec: row[:prim_long_dec],
#                    elev_in_m: row[:elev_in_m],
#                    elev_in_ft: row[:elev_in_ft],
#                    map_name: row[:map_name]
# end

# # Wyoming Features
# CSV.table('/Users/philbattos/Downloads/CO_Features_20130404.txt', col_sep: '|').each do |row|

#   Geoname.create! feature_id: row[:feature_id],
#                    feature_name: row[:feature_name],
#                    feature_class: row[:feature_class],
#                    state_alpha: row[:state_alpha],
#                    county_name: row[:county_name],
#                    primary_lat_dms: row[:primary_lat_dms],
#                    prim_long_dms: row[:prim_long_dms],
#                    prim_lat_dec: row[:prim_lat_dec],
#                    prim_long_dec: row[:prim_long_dec],
#                    elev_in_m: row[:elev_in_m],
#                    elev_in_ft: row[:elev_in_ft],
#                    map_name: row[:map_name]
# end

# 169345|Wulsten Baldy|Summit|CO|08|Custer|027|381505N|1054417W|38.2513874|-105.7380624|||||3870|12697|Cotopaxi|08/01/1990|
# 169346|Barnes Ridge|Ridge|CO|08|Garfield|045|394330N|1080912W|39.7249748|-108.1534144|||||2383|7818|Cutoff Gulch|08/01/1990|
# 169347|V Rock|Cliff|CO|08|Archuleta|007|370728N|1064738W|37.1244538|-106.7939245|||||3140|10302|Chromo|08/01/1990|
# 169348|Rio Grande Palisades|Cliff|CO|08|Mineral|079|374330N|1064232W|37.7250033|-106.7089312|||||2526|8287|South Fork West|12/01/1989|
# 169349|C J Lateral|Canal|CO|08|Montrose|085|382724N|1075413W|38.4566535|-107.9036748|||||1775|5823|Montrose West|04/01/1990|
# 169350|Pheney Lateral Ditch|Canal|CO|08|Grand|049|400230N|1061810W|40.0416521|-106.3028059|||||2326|7631|Junction Butte|04/01/1990|
# 169351|Frosty Park|Flat|CO|08|Teller|119|384520N|1045737W|38.755543|-104.9602508|||||3111|10207|Manitou Springs|04/01/1990|
# 169352|Elk Park|Flat|CO|08|Teller|119|384545N|1050007W|38.762486|-105.001918|||||3362|11030|Pikes Peak|04/01/1990|
# 169353|Pueblo Reservoir|Reservoir|CO|08|Pueblo|101|381554N|1044639W|38.2649163|-104.7775932|||||1471|4826|Swallows|11/01/1992|07/13/2011
# 169354|Cache Creek Trail|Trail|CO|08|Garfield|045|392249N|1075212W|39.380257|-107.8700666|||||3233|10607|North Mamm Peak|05/01/1991|
# 169355|Brush Creek Trail|Trail|CO|08|Mesa|077|392137N|1074950W|39.3602573|-107.8306203|||||2801|9190|South Mamm Peak|05/01/1991|
# 169356|Erie Canal|Canal|CO|08|Mesa|077|391407N|1074602W|39.2352577|-107.7672834|||||2475|8120|Vega Reservoir|05/01/1991|

