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
        begin
          RetailerMailer.order_confirmation_email(self, "orders@nimbusfly.com").deliver
          RetailerMailer.order_confirmation_email(self, retailer[:email]).deliver
        rescue Net::SMTPAuthenticationError, Net::SMTPServerBusy, Net::SMTPSyntaxError, Net::SMTPFatalError, Net::SMTPUnknownError => e
          notifier.ping "Uh oh! Order confirmation e-mail to " + @order.retailer.name + " for order: " + @order.id.to_s + "failed."
        end
      end
  end

  def order_params
    params.permit(:id, :status, :status_detail, :carrier_code, :tracking_number, :etransfer_link)
  end
end
