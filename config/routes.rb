  Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :instruments
  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  # root 'instruments#index'
  authenticated :user do 
    root 'instruments#index'
  end

  root to: redirect("/users/sign_in")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
