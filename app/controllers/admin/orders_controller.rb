class Admin::OrdersController < ApplicationController
  def create
    begin
      @order = Order.find params[:id]
      if !@order.etransfer_link.present?
        @order.update(etransfer_link: order_params[:etransfer_link])
        @order.send_order_to_retailer()
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

  def update_status
    @order = Order.find(order_params[:id])
    if @order.update(order_params)
      @order.send_user_status_update()
    else
      render :text => "Some error occured, please try again!", :status => '404' and return
    end
  end

  def order_params
    params.permit(:id, :status, :carrier_code, :tracking_number, :etransfer_link)
  end
end
