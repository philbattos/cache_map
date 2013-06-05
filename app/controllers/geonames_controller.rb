class GeonamesController < ApplicationController

  def index
    # @geonames = Geoname.search(params)
    # filters = params[:query]
  end

  def results
    @geonames = Geoname.search(params)
  end

  def map
    # if params[:query] == ""
    #   redirect_to "/geonames", :flash => { :notice => "Please enter clues to search for" }
    # elsif params[:query].include?(" ")
    #   search_terms = params[:query].split(" ")
    #   terms = []
    #   search_terms.each do |term|
    #     terms << term
    #   end
    #   redirect_to "/geonames", :flash => { :notice => "Do you want to search for '#{terms[0]}' and '#{terms[1]}' or '#{terms.join(" ")}'?" }
    # elsif Geoname.search(params).count == 0
    #   redirect_to "/geonames", :flash => { :notice => "There are no places that match your request"}
    # params[:above5000] == "yes"
      # @geo_search = Geoname.where("elev_in_ft > ?", params[:above5000])
    # fail
    @geo_search = Geoname.search(params)
    # end
  end


  def show
    @geoname = Geoname.where(feature_id: params[:id]).first
  end

  def new
    @geoname = Geoname.new
  end

  # def edit
  # end

  def create
    @geoname = Geoname.where(feature_name: params[:feature_name])
    redirect_to results_path
  end

  # def destroy
  # end

end
