Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :stories do
    member do
      post :like
    end
  end

  delete '/logout', to: 'sessions#destroy', as: :logout
  get '/auth/:provider/callback', to: 'sessions#create'
  root to: 'stories#index'
end
