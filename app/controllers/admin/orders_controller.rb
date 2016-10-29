class Admin::OrdersController < ApplicationController
  def create
    begin
      @order = Order.find params[:id]
      if @order.etransfer_link.present?
        @order.update(etransfer_link: order_params[:etransfer_link])
        @order.send_order_to_retailer()
        @order.send_order_to_user()
        @order.update(status: 'verifying')
      else
        render :text => 'Order already has etransfer link' and return
      end
    rescue => e
      @order.update(status: 'unsent')
      # TODO: hook up slack/email notifier here to let us know an error has occured
      render :text => 'error' and return
    end

    @order.send_user_status_update()
    render :text => 'success!'
  end

  def edit
    @order = Order.find(order_params[:id])
    # if @order[:status] != "verifying"
    #   render :text => "Failed, this order's status has already been set to [" + @order[:status] + "] and cannot be updated!", :status => '404' and return
    # end
    #
    # if order_params[:status].present?
    #   if order_params[:status] == ("packaging" || "declined")
    #     @message = "Order ##{@order[:id]} has been set to [" + order_params[:status] + "]!"
    #   elsif order_params[:status] == "in_transit" && order_params[:tracking_number].present?
    #     @message = "Order ##{@order[:id]} has been set to [" + order_params[:status] + "]!"
    #   else
    #     render :text => 'Invalid Request!', :status => '404' and return
    #   end
    # else
    #   render :text => 'Invalid Request!', :status => '404' and return
    # end
    #
    # if !@order.update(order_params)
    #   render :text => "Some error occured, please try again!", :status => '404' and return
    # end
    if @order.update(order_params)
      @order.send_user_status_update()
    else
      render :text => "Some error occured, please try again!", :status => '404' and return
    end
  end

  def order_params
    params.permit(:id, :status, :tracking_number, :etransfer_link)
  end
end
