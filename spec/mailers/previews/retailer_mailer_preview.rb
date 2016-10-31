# Preview all emails at http://localhost:3000/rails/mailers/retailer_mailer
class RetailerMailerPreview < ActionMailer::Preview
  def order_confirmation_email
    RetailerMailer.order_confirmation_email(Order.last, "preview@gmail.com")
  end
end
