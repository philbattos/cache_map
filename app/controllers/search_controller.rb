class SearchController < ApplicationController
  def index
    @geonames = Geoname.search(params)
  end
end