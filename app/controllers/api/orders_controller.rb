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
      @order.order_details.create(item)
    end

    @order.send_order_to_user()
    Sunwukong.notifier.ping("A new order for " + @order.retailer.name + " was placed! Order: " + @order.id.to_s + " | Total: " + @order.total_price.to_s)
  end

  def order_params
    params.permit(:id, :total_price, :address_id, :retailer_id, :status, :distribution_channel, :delivery_fee, :tax_amount)
  end

  def order_details_params
    params.permit(:order_details => [:price, :quantity, :name, :thumbnail,  :images => []])
  end
end
