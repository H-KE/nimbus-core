class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :null_session
  
  Stripe.api_key="sk_test_dbEMU2gXmZQz5qiAA96anzuD"

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

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
