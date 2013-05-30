class GeonamesController < ApplicationController

  def index
    @places = Geoname.all
  end

  def results

  end

  def map
    @coordinates = Geoname.new
    @latitude = Geoname.last.prim_lat_dec
    @longitude = Geoname.last.prim_long_dec
    gon.latitude = @latitude
    gon.longitude = @longitude
  end


  # def show
  # end

  # def new
  # end

  # def edit
  # end

  # def create
  # end

  # def destroy
  # end

end
