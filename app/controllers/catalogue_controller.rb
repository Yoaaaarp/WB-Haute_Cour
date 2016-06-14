class CatalogueController < ApplicationController
  def index
  	@bottles = Bottle.all
  	@wines = Wine.all
  	@order = Order.new
  end

  def creer_link
    @bottle = Bottle.find(params[:id])
    link = Link.new(link_params)
    link.bottle = @bottle
    link.save
  end



  private
  def link_params
      params.require(:number)
    end

end
