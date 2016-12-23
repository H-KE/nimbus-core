class Api::Admin::ProductsController < ApplicationController
  before_action :authenticate_api_admin!

  def index
    @products = Retailer.find(params[:retailer_id]).products.order(:id)
  end
end
