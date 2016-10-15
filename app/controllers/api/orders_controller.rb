class Api::OrdersController < ApplicationController
  before_action :authenticate_api_user!

  def index
    @user = current_api_user
    @orders = @user.orders.all
  end

  def create
    @user = current_api_user

    if @user.stripe_customer_id.present?
      @order = @user.orders.create!(order_params)
      charge = Stripe::Charge::create(
        :amount => params[:total_price] * 100,
        :currency => "cad",
        :customer => @user.stripe_customer_id,
        :description => "Charge user #{}" + @user.id.to_s + " (" + @user.fullname + ") for order #" + @order.id.to_s)

      order_details_params[:order_details].each do |item|
        @order.order_details.create({
          product_id: item[:id],
          price: item[:price],
          quantity: item[:quantity],
          name: item[:name]
        })
      end
    else
      render :json => { :errors => "NO_CREDIT_CARD"}, :status => 422
    end

    RetailerMailer.send_order_confirmation(@user, @order).deliver
    RetailerMailer.send_order_confirmation_demo(@user, @order).deliver
    UserMailer.send_order_confirmation(@user, @order).deliver

  rescue Stripe::CardError => e
    @order.status = "DECLINED"
    render :json => { :errors => e.json_body[:error]}, :status => 422
  end

  def order_params
    params.permit(:total_price, :address, :retailer_id, :status, :distribution_channel)
  end

  def order_details_params
    params.permit(:order_details => [:id, :price, :quantity, :name])
  end
end
