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

    @retailer = @order.retailer
    @updateUrl = request.base_url +  "/admin/orders/#{@order[:id]}/edit"
    ticket_html = render_to_string(:partial => 'desk_ticket_confirm.html',
                                   :locals => { user: @user,
                                                order: @order,
                                                orderDetails: @order.order_details,
                                                documents: @user.verification_documents,
                                                updateUrl: @updateUrl,
                                                shippingAddress: @order.shipping_address })
    puts ticket_html
    @retailer.create_order_ticket ticket_html.to_json

    RetailerMailer.send_order_confirmation(@user, @order, @retailer[:email], @updateUrl).deliver
    RetailerMailer.send_order_confirmation(@user, @order, "info.nimbusfly@gmail.com", @updateUrl).deliver
    UserMailer.send_order_confirmation(@user, @order).deliver

  rescue Stripe::CardError => e
    @order.status = "DECLINED"
    render :json => { :errors => e.json_body[:error]}, :status => 422
  end

  def order_params
    params.permit(:id, :total_price, :address, :retailer_id, :status, :distribution_channel, :delivery_fee, :tax_amount)
  end

  def order_details_params
    params.permit(:order_details => [:id, :price, :quantity, :name])
  end
end
