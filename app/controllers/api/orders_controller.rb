class Api::OrdersController < ApplicationController
  before_action :authenticate_api_user!

  # def index
  #  @products = Retailer.find(params[:retailer_id]).products
  # end
  #
  def create
    @user = current_api_user
    @order = @user.orders.create!(order_params)

    order_details_params[:order_details].each do |item|
      binding.pry
      @order.order_details.create({
        product_id: item[:id],
        price: item[:price],
        quantity: item[:quantity]
      })
    end
  end

  def order_params
    params.permit(:total_price, :address, :retailer_id, :status)
  end

  def order_details_params
    params.permit(:order_details => [:id, :price, :quantity])
  end
end
