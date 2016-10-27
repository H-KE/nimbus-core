class RetailerMailer < ApplicationMailer
  default :from => 'hello@nimbusfly.co'

  def send_order_confirmation(user, order, sendTo, updateUrl)
    @user = user
    @order = order
    @retailer = order.retailer
    @orderDetails = order.order_details
    @shippingAddress = order.shipping_address
    @documents = user.verification_documents
    @updateUrl = updateUrl
    mail( :to => sendTo,
          :subject => '[NIMBUS] ' + @user[:first_name] + ' has placed a ' + @order[:distribution_channel] + ' order' )
  end
end
