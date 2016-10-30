class UserMailer < ApplicationMailer
  default :from => 'hello@nimbusfly.co'

  def signup_confirmation_email(user)
    @user = user
    mail( :to => @user.email,
          :subject => 'Thanks for signing up with Nimbus!' )
  end

  def order_confirmation_email(order)
    @order = order
    @user = order.user
    @retailer = order.retailer
    @orderDetails = order.order_details
    @shippingAddress = order.shipping_address

    mail( :to => @user[:email],
          :subject => '[NIMBUS] ' + @user[:first_name] + ', thank you for placing your order with ' + @retailer[:name])
  end

  def order_status_email(order)
    @order = order
    @user = order.user
    @retailer = order.retailer

    mail( :to => @user[:email],
          :subject => '[NIMBUS] ' + @user[:first_name] + ', your order from ' + @retailer[:name] + ' was updated to ' + @order.readable_status + '!')
  end
end
