class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # protect_from_forgery with: :null_session

  def new
   initialize_resource
  end

  def create
  build_resource

  resource.save!
  end

  def update
   resource.update! resource_params
  end

  def destroy
   resource.destroy!
  end
end
