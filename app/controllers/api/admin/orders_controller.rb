class Api::Admin::OrdersController < ApplicationController
  before_action :authenticate_api_admin!

  def index
    @orders = Order.all
  end
end
