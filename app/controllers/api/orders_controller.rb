class Api::OrdersController < ApplicationController
  before_action :authenticate_api_user!

  def index
    @user = current_api_user
    @orders = @user.orders.order("created_at DESC")
  end

  def show
    @order = Order.find(order_params[:id])
  end

  def create
    @user = current_api_user
    @order = @user.orders.create!(order_params)

    order_details_params[:order_details].each do |item|
      @order.order_details.create({
        product_id: item[:id],
        price: item[:price],
        quantity: item[:quantity],
        name: item[:name]
      })
    end
    
    @order.send_order_to_user()
    # TODO: Need error handling here
  end

  def order_params
    params.permit(:id, :total_price, :address, :retailer_id, :status, :distribution_channel, :delivery_fee, :tax_amount)
  end

  def order_details_params
    params.permit(:order_details => [:id, :price, :quantity, :name])
  end
end
