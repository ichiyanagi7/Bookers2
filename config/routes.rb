Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "homes#top"

  get "home/about",to: "homes#about" ,as: :homes_about

  resources :books do
    resource :favorites, only:[:create,:destroy]
    resources :comments,only:[:create,:destroy]
  end


  resources :users,only:[:show,:index,:edit,:update] do
    resource :relationships, only:[:create,:destroy]
    get "followings" => "relationships#followings",as:"followings"
    get "followers" => "relationships#followers",as:"followers"
  end

end
