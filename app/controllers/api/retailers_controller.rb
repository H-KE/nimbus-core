class Api::RetailersController < ApplicationController
  def index
   @retailers = Retailer.all
  end

  def show
   @retailer = Product.find params[:id]
  end
end
