class RetailerMailer < ApplicationMailer
  default :from => 'hello@nimbusfly.co'

  def order_confirmation_email(order, sendTo)
    @order = order
    @user = order.user
    @retailer = order.retailer
    @orderDetails = order.order_details
    @shippingAddress = order.shipping_address
    @documents = @user.verification_documents

    mail( :to => sendTo,
          :subject => "[NIMBUS Order ##{@order[:id]}] " + @user[:first_name] + " has placed a " + @order[:distribution_channel] + " order" )
  end

  def pickup_confirmation_email(order, sendTo)
    @order = order
    @user = order.user
    @retailer = order.retailer
    @orderDetails = order.order_details
    @shippingAddress = order.shipping_address
    @documents = @user.verification_documents

    mail( :to => sendTo,
          :subject => "[NIMBUS Order ##{@order[:id]}] " + @user[:first_name] + " has placed a " + @order[:distribution_channel] + " order" )
  end
end
