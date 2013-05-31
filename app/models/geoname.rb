class Geoname < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

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

  # mapping do
  #   indexes :id,                :index    => :not_analyzed
  #   indexes :feature_id,        :analyzer => 'snowball'
  #   indexes :feature_name,      :analyzer => 'keyword', :boost => 100
  #   indexes :feature_class,     :analyzer => 'keyword'
  #   indexes :state_alpha,       :as       => 'content.size'
  #   indexes :county_name,       :analyzer => 'keyword'
  #   indexes :primary_lat_dms,   :type     => 'date', :include_in_all => false
  #   indexes :prim_long_dms,     :index    => :not_analyzed
  #   indexes :prim_lat_dec,      :analyzer => 'snowball', :boost => 100
  #   indexes :prim_long_dec,     :analyzer => 'snowball'
  #   indexes :elev_in_m,         :as       => 'content.size'
  #   indexes :elev_in_ft,        :analyzer => 'keyword'
  #   indexes :map_name,          :type     => 'date', :include_in_all => false
  # end

  def self.search(params)
    tire.search do
      query { string params[:query] } if params[:query].present?
      filter :range, elev_in_ft: {lt: 5000}
    end
  end

end
