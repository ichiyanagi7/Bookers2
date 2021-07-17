Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top"

  get "home/about",to: "homes#about" ,as: :homes_about

  resources :books
  resources :users,only:[:show,:index,:edit,:update]

end
