class Api::RetailersController < ApplicationController
  before_action :authenticate_api_user!

  def index
    @retailers = Retailer.all.order(:id)
  end

  def show
    @retailer = Retailer.find params[:id]
  end

  def channel
    @retailers = Retailer.where(params[:distribution]).order(:id)
  end
end
