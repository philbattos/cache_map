class CreateGeonames < ActiveRecord::Migration
  def change
    create_table :geonames do |t|
      t.integer :feature_id
      t.string :feature_name
      t.string :feature_class
      t.text :state_alpha
      t.integer :state_numeric
      t.string :county_name
      t.integer :county_numeric
      t.text :primary_lat_dms
      t.text :prim_long_dms
      t.text :prim_lat_dec
      t.text :prim_long_dec
      t.text :source_lat_dms
      t.text :source_long_dms
      t.text :source_lat_dec
      t.text :source_long_dec
      t.integer :elev_in_m
      t.integer :elev_in_ft
      t.string :map_name
      t.datetime :date_created
      t.datetime :date_edited

      t.timestamps
    end
  end
end