Rails.application.routes.draw do
  root "home#index"

  get  "login",  to: "home#login_form"
  post "login",  to: "home#login"
  get  "logout", to: "home#logout"

  get "result", to: "home#result"
  get "about",  to: "home#about"

  resources :kekkas
end
