class Admin::OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

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
      Sunwukong.notifier.ping("Order status has been updated to: " + @order.status + " for order: " + @order.id.to_s)
      if order_params[:etransfer_link].present? && !@order.payment_received
        begin
          # if @order.distribution_channel == 'mail'
          RetailerMailer.order_confirmation_email(@order, "orders@nimbusfly.co").deliver
          RetailerMailer.order_confirmation_email(@order, @order.retailer[:email]).deliver
          @order.update!(payment_received: true)
          # elsif @order.distribution_channel == 'pickup'
          #   RetailerMailer.pickup_confirmation_email(@order, "orders@nimbusfly.co").deliver
          #   RetailerMailer.pickup_confirmation_email(@order, @order.retailer[:email]).deliver
          # end
          Sunwukong.notifier.ping("Payment has been received and sent for order: " + @order.id.to_s, channel: '#payments')
        rescue Net::SMTPAuthenticationError, Net::SMTPServerBusy, Net::SMTPSyntaxError, Net::SMTPFatalError, Net::SMTPUnknownError => e
          Sunwukong.notifier.ping "Uh oh! Order confirmation e-mail to " + @order.retailer.name + " for order: " + @order.id.to_s + "failed."
        end
      end
    end
  end

  def order_params
    params.permit(:id, :status, :status_detail, :carrier_code, :tracking_number, :etransfer_link)
  end
end
