Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"
    devise_for :users
    resources :users, only: %i(index show destroy)
    resources :hotels
  end
end
