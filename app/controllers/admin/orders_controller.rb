class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(order_params[:id])
    @order_params = order_params;
    # TODO: this is a temp workaround before a full on admin page for order is created
    # currently, we are display the order manage page corresponding to the request status
  end

  # TODO: need some heavy error and retailer behaviour restriction handling here
  # Don't want them to repeated updating the order status and notifying user
  def update
    @order = Order.find params[:id]
    begin
      @order.update(order_params)
      @order.send_user_status_update()
      if order_params[:etransfer_link].present?
        @order.send_order_to_retailer()
      end
    rescue => e
      @order.update(status: 'error')
      # TODO: hook up slack/email notifier here to let us know an error has occured
      render :plain => e and return
    end
  end

  def order_params
    params.permit(:id, :status, :carrier_code, :tracking_number, :etransfer_link)
  end
end
