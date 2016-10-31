class Api::AddressesController < ApplicationController
  before_action :authenticate_api_user!

  def show
    @address = Address.find(params[:id])
  end

  def create
    @address = current_api_user.addresses.create(address_params)
  end

  def address_params
    params.permit(:primary, :secondary, :city, :province, :postal_code)
  end
end
