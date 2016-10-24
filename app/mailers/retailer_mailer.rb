class RetailerMailer < ApplicationMailer
  default :from => 'hello@nimbusfly.co'

  def send_order_confirmation(user, order, sendTo, updateUrl)
    @user = user
    @order = order
    @retailer = order.retailer
    @orderDetails = order.order_details
    @retailer = order.retailer
    addressHash = JSON.parse @order.address
    @shippingAddress = addressHash["streetAndNumber"] + ', ' +
                        addressHash["aptNumber"] + ', ' +
                        addressHash["city"] + ', ' +
                        addressHash["province"] + ', ' +
                        addressHash["postalCode"]
    @documents = @user.verification_documents
    @updateUrl = updateUrl
    mail( :to => sendTo,
          :subject => '[NIMBUS] ' + @user[:first_name] + ' has placed a ' + @order[:distribution_channel] + ' order' )
  end
end
