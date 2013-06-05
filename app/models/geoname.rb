class Geoname < ActiveRecord::Base
  include Tire::Model::Search
  include Tire::Model::Callbacks

  attr_accessible :feature_id,
                  :feature_name,
                  :feature_class,
                  :state_alpha,
                  :state_numeric,
                  :county_name,
                  :county_numeric,
                  :primary_lat_dms,
                  :prim_long_dms,
                  :prim_lat_dec,
                  :prim_long_dec,
                  :source_lat_dms,
                  :source_long_dms,
                  :source_lat_dec,
                  :source_long_dec,
                  :elev_in_m,
                  :elev_in_ft,
                  :map_name,
                  :date_created,
                  :date_edited

  def self.search(params)
    tire.search per_page: 15 do
      # query do
        # terms :feature_name, ['river', 'arkansas'], :minimum_match => 2
      # end
      # if params[:query] == ""
      #   redirect_to "/geonames"
      # else
        query { string params[:query] } if params[:query].present?
        filter :range, elev_in_ft: {gte: params[:elevation_5000] ? 5000 : 0}
        filter :terms, state_alpha: ["CO", "ID"]
        # query { terms :state_alpha, ['CO'] }
        # filter :range, state_alpha: { params[:geoname] }
        # filter :range, elev_in_ft: {lt: 5000}
        # sort { by :feature_name }
        # if params[:query].blank?
      # end
    end
  end

end
