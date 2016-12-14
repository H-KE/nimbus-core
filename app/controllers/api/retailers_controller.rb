class Api::RetailersController < ApplicationController
  # before_action :authenticate_api_user!

  def index
    @retailers = Retailer.all.order(:updated_at)
  end

  def show
    @retailer = Retailer.find params[:id]
  end

  def channel
    @retailers = Retailer.where(params[:distribution]).order(:updated_at)
  end
end
