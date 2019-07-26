Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  authenticated :user do 
    root 'store#index'
  end
  
  root to: redirect("/users/sign_in")
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
