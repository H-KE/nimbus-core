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
    resources :users, only: [:show, :update]
    resources :orders, only: [:index, :show, :create]
    resources :verification_documents, only: [:index, :create]
  end
  namespace :admin do
    resources :orders, only: [:edit, :index]
    resources :emails, only: [:create]
  end
end
