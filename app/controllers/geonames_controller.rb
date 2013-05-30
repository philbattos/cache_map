class GeonamesController < ApplicationController

  def index
    @place = Geoname.new
  end

  def results

  end

  def map
    @coordinates = Geoname.new
    @latitude = Geoname.first.prim_lat_dec
    @longitude = Geoname.first.prim_long_dec
    gon.latitude = @latitude
    gon.longitude = @longitude
  end


  # def show
  # end

  def new
    @place = Geoname.new
  end

  # def edit
  # end

  def create
    @place = Geoname.find_all_by_feature_name(params[:map_name])
    # @place.save
    redirect_to results_path
  end

  # def destroy
  # end

end
