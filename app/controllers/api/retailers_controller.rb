class Api::RetailersController < ApplicationController
  # before_action :authenticate_api_user!

  def index
    @active_retailers = Retailer.active
    @inactive_retailers = Retailer.coming_soon
  end

  def show
    @retailer = Retailer.find params[:id]
  end

  def channel
    @retailers = Retailer.where(params[:distribution]).order(:updated_at)
  end
end
