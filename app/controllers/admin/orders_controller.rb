class Admin::OrdersController < ApplicationController
  def edit
    @order = Order.find(order_params[:id])
    if @order[:status] != "verifying"
      render :text => "Failed, this order's status has already been set to [" + @order[:status] + "] and cannot be updated!", :status => '404' and return
    end

    if order_params[:status].present?
      if order_params[:status] == ("packaging" || "declined")
        @message = "Order ##{@order[:id]} has been set to [" + order_params[:status] + "]!"
      elsif order_params[:status] == "in_transit" && order_params[:tracking_number].present?
        @message = "Order ##{@order[:id]} has been set to [" + order_params[:status] + "]!"
      else
        render :text => 'Invalid Request!', :status => '404' and return
      end
    else
      render :text => 'Invalid Request!', :status => '404' and return
    end

    if !@order.update(order_params)
      render :text => "Some error occured, please try again!", :status => '404' and return
    end
  end

  def index
    Retailer.find(1).create_order_ticket
  end

  def order_params
    params.permit(:id, :status, :tracking_number)
  end
end
