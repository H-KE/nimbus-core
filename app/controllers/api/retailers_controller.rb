class Api::RetailersController < ApplicationController
  before_action :authenticate_api_user!

  def index
    @retailers = Retailer.all
  end

  def show
    @retailer = Product.find params[:id]
  end

  def channel
    @retailers = Retailer.where(params[:distribution])
  end
end
