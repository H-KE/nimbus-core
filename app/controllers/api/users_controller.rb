class Api::UsersController < ApplicationController
  before_action :authenticate_api_user!

  def update_user
    @user = current_api_user
    @user.update(user_params)
  end

  def current_user
    @user = current_api_user
    @documents = @user.verification_documents.all
    @addresses = @user.addresses.all
  end

  def user_params
    params.permit(:first_name, :last_name, :email)
  end

  def address_params
    params.permit(:addresses => [:id, :primary, :secondary, :city, :province, :postal_code])
  end
end
