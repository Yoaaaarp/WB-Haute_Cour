class CatalogueController < ApplicationController
  def index
  	@bottles = Bottle.all
  end
end
