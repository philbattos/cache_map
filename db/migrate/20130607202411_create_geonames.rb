class CreateGeonames < ActiveRecord::Migration
  def change
    create_table :geonames do |t|
      t.integer :feature_id
      t.string :feature_name
      t.string :feature_class
      t.string :state_alpha
      t.string :county_name
      t.text :primary_lat_dms
      t.text :prim_long_dms
      t.text :prim_lat_dec
      t.text :prim_long_dec
      t.integer :elev_in_m
      t.integer :elev_in_ft
      t.string :map_name

      t.timestamps
    end
  end
end
