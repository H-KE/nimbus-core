class Api::Admin::RetailersController < ApplicationController
  before_action :authenticate_api_admin!

  def show
    @retailer = current_api_admin.retailer
  end
end
