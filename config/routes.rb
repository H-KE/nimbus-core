Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :products, only: [:show]
    resources :retailers, only: [:index, :show] do
      collection do
        get :channel
      end
      resources :products, only: [:index]
    end
    resources :users, only: [:show, :update] do
      member do
        put :update_user
        get :credit_card
      end
    end
    resources :orders, only: [:index, :show, :create]
  end
  namespace :admin do
    resources :orders, only: [:edit]
  end
end
