class UserMailer < ApplicationMailer
  default :from => 'hello@nimbusfly.co'

  # send a signup email to the user, pass in the user object that contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
          :subject => 'Thanks for signing up with Nimbus!' )
  end

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

    mail( :to => @user[:email],
          :subject => '[NIMBUS] ' + @user[:first_name] + ', thank you for placing your order with ' + @retailer[:name])
  end
end
