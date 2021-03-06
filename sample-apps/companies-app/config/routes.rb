Rails.application.routes.draw do
  resources :companies do
    collection do
      get :export
    end
    resources :contacts, only: %i[index] do
      collection do
        post :manage
      end
    end
  end

  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  get '/login', to: 'oauth/authorization#login'
  root to: 'companies#index'
end
