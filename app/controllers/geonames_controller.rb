class GeonamesController < ApplicationController

  def index
    @geonames = Geoname.search(params)
    # raise notice.inspect
  end

  def map
    @geo_search = Geoname.search(params)
    if params[:query] == ""
      redirect_to :back, :flash => { :notice => "Please enter clues to search for" }
    elsif @geo_search.count == 0
      redirect_to :back, :flash => { :notice => "Sorry, no results for that search. Please enter a new search." }
    end
  end

  def show
    @geoname = Geoname.where(feature_id: params[:id]).first
    # @geoname = Geoname.find_by_feature_id(params[:id])
  end

  def poem

  end

  def new
    @geoname = Geoname.new
  end

  def create
    @geoname = Geoname.find_all_by_feature_name(params[:feature_name])
    redirect_to results_path
  end

end
