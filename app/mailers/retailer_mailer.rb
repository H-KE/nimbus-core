class RetailerMailer < ApplicationMailer
  default :from => 'hello@nimbusfly.co'

  def send_order_confirmation(user, order)
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

    mail( :to => @retailer[:email],
          :subject => '[NIMBUS] ' + @user[:first_name] + ' has placed a ' + @order[:distribution_channel] + ' order' )
          #     RetailerMailer.send_signup_email(@user, @order).deliver
  end

  def send_order_confirmation_demo(user, order)
    @user = user
    @order = order
    @orderDetails = order.order_details
    @retailer = order.retailer
    addressHash = JSON.parse @order.address
    @shippingAddress = addressHash["streetAndNumber"] + ', ' +
                        addressHash["aptNumber"] + ', ' +
                        addressHash["city"] + ', ' +
                        addressHash["province"] + ', ' +
                        addressHash["postalCode"]

    mail( :to => 'info.nimbusfly@gmail.com',
          :subject => '[NIMBUS] ' + @user[:first_name] + ' has placed a ' + @order[:distribution_channel] + ' order' )
          #     RetailerMailer.send_signup_email(@user, @order).deliver
  end
end
