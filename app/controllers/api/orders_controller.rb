class Api::OrderController < ApplicationController
  before_action :authenticate_api_user!

  # def index
  #  @products = Retailer.find(params[:retailer_id]).products
  # end
  #
  # def create
  #  @product = Product.find params[:id]
  # end
end
