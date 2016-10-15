class Api::ProductsController < ApplicationController
  before_action :authenticate_api_user!

  def index
   @products = Retailer.find(params[:retailer_id]).products.order(:id)
  end

  def show
   @product = Product.find params[:id]
  end
end
