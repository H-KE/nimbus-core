class UserMailer < ApplicationMailer
  default :from => 'info.nimbusfly@gmail.com'

  # send a signup email to the user, pass in the user object that contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => 'peter3923@gmail.com',
          :subject => 'Thanks for signing up for our amazing app' )
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
