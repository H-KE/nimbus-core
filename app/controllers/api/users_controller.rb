class Api::UsersController < ApplicationController
  before_action :authenticate_api_user!

  def update
    @user = current_api_user
    @user.update(user_params)
  end

  def show
    @user = current_api_user
    @documents = @user.verification_documents.all
  end

  def user_params
    params.permit(:address, :first_name, :last_name, :email)
  end

  def card_params
    params.permit(:card_token)
  end
end
