Rails.application.routes.draw do
  root "home#index"
  get "result", to: "home#result"
  get "about", to: "home#about"
  resources :kekkas

end
