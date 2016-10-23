class Api::UsersController < ApplicationController
  before_action :authenticate_api_user!

  def update
    @user = current_api_user
    @user.update(user_params)

    if params[:token].present?
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
  end

  def show
    @user = current_api_user
    @documents = @user.verification_documents.all
    if @user.stripe_customer_id.present?
      @cards = Stripe::Customer.retrieve(@user.stripe_customer_id).sources.all(:object => "card")
    else
      @cards = []
    end
  end

  def user_params
    params.permit(:address, :first_name, :last_name, :email)
  end

  def card_params
    params.permit(:card_token)
  end
end
