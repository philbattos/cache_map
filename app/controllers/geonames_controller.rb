class GeonamesController < ApplicationController

  def index
    @geonames = Geoname.search(params)
    # puts @geonames
  end

  def results
    @geonames = Geoname.search(params)
  end

  def map
    # @coordinates = Geoname.new
    @geoname = Geoname.search(params)
    @geo_search = Geoname.search(params)
    # @latitude = Geoname.first.prim_lat_dec
    # @longitude = Geoname.first.prim_long_dec
  end


  def show
    @geoname = Geoname.find_by_feature_id(params[:id])
  end

  def new
    @geoname = Geoname.new
  end

  # def edit
  # end

  def create
    # @place = Geoname.new(params[:place])
    # @place.save

    @geoname = Geoname.find_all_by_feature_name(params[:feature_name])
    redirect_to results_path
  end

  # def destroy
  # end

end
