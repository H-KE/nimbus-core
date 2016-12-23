class Api::Admin::AdminsController < ApplicationController
  before_action :authenticate_api_admin!

  def current_admin
    @admin = current_api_admin
  end
end
