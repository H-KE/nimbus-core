Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      :registrations => "custom/registrations"
    }
    mount_devise_token_auth_for 'Admin', at: 'admin/auth'
    resources :products, only: [:show]
    resources :retailers, only: [:index, :show] do
      collection do
        get :channel
      end
      resources :products, only: [:index]
    end
    resources :users, only: [:update] do
      collection do
        get :current_user
      end
    end
    resources :orders, only: [:index, :show, :create]
    resources :addresses, only: [:create, :show]
    resources :verification_documents, only: [:index, :create, :destroy]
    resources :tickets, only: [:create]
    resources :comments, only: [:create]

    namespace :admin do
      resources :orders, only: [:index]
      resources :retailers, only: [:show] do
        resources :products, only: [:index]
      end
    end
  end
  namespace :admin do
    resources :orders, only: [:show, :index] do
      collection do
        post :update
      end
    end
    resources :weedmaps, only: [] do
      collection do
        get :parse_menu
        get :update_all_menus
        post :add_dispensary
      end
    end
  end
end
