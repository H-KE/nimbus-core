# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def order_confirmation_email
    UserMailer.order_confirmation_email(Order.first)
  end

  def order_status_email
    UserMailer.order_status_email(Order.first)
  end
end
