class Api::ProductsController < ApplicationController
  def index
   @products = Retailer.find(params[:retailer_id]).products
  end

  def show
   @product = Product.find params[:id]
  end
end
