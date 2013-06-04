class GeonamesController < ApplicationController

  def index
    @geonames = Geoname.search(params)
    # filters = params[:query]
  end

  def results
    @geonames = Geoname.search(params)
  end

  def map
    @geoname = Geoname.search(params)
    @geo_search = Geoname.search(params)
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
