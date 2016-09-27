Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :products, only: [:index, :show]
    resources :retailers do
      collection do
        get :channel
      end
    end
  end
end
