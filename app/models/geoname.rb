class Geoname < ActiveRecord::Base
  attr_accessible :feature_id,
                  :feature_name,
                  :feature_class,
                  :state_alpha,
                  :county_name,
                  :primary_lat_dms,
                  :prim_long_dms,
                  :prim_lat_dec,
                  :prim_long_dec,
                  :elev_in_m,
                  :elev_in_ft,
                  :map_name
end
