Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    get "/signup", to: "users#new"
    get "/login", to: "sessions#new"
    post "/login", to: "sessions#create"
    post "/signup", to: "users#create"
    delete "/logout", to: "sessions#destroy"
    root "static_pages#home"
    resources :users
    resources :password_resets, only: %i(new create edit update)
    resources :account_activations, only: [:edit]
  end
end
