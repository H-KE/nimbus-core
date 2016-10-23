class Admin::OrdersController < ApplicationController
  def edit
    @order = Order.find(order_params[:id])
    if @order[:status] != "NEW"
      render :text => "Failed, this order's status has already been set and cannot be updated!", :status => '404' and return
    end
    
    if order_params[:status].present?
      if order_params[:status] == "packaging"
        @message = "Order ##{@order[:id]} has been accepted!"
      elsif order_params[:status] == "declined"
        @message = "Order ##{@order[:id]} has been declined!"
      elsif order_params[:status] == "in_transit" && order_params[:tracking_number].present?
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

  def order_params
    params.permit(:id, :status, :tracking_number)
  end
end
