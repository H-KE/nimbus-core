class Api::UsersController < ApplicationController
  before_action :authenticate_api_user!

  def show
    @user = current_api_user
  end

  def update
    @user = current_api_user
    token = params[:token]

    if @user.stripe_customer_id.present?
      customer = Stripe::Customer.retrieve(@user.stripe_customer_id)
      @card = customer.sources.create(:source => token)
    else
      customer = Stripe::Customer.create(
        :description => "Customer for" + @user.email,
        :source => token)
      @user.update(stripe_customer_id: customer.id)
    end
  end

  def show
    @user = current_api_user
    if @user.stripe_customer_id.present?
      @cards = Stripe::Customer.retrieve(@user.stripe_customer_id).sources.all(:object => "card")
      binding.pry
    else
      binding.pry
      @cards = []
    end
  end
end
