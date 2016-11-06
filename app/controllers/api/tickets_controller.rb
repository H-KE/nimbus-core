class Api::TicketsController < ApplicationController
  before_action :authenticate_api_user!

  def create
    @user = current_api_user
    UserMailer.support_ticket_email(@user, ticket_params[:ticket_type], ticket_params[:message]).deliver
  end

  def ticket_params
    params.permit(:ticket_type, :message)
  end
end
