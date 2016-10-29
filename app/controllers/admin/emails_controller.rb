class Admin::EmailsController < ApplicationController
  def create
    @order = Order.find params[:id]
    if @order.update(etransfer_link: order_params[:etransfer_link])
      if @order.send_to_retailer() && @order.send_to_user()
        @order.update(status: 'verifying')
      end
    end
    # TODO: Do something here to let us know it has failed
  end

  def order_params
    params.permit(:id, :etransfer_link)
  end
end
