Rails.application.routes.draw do
  get 'homes/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #  resources :kinds,shallow: true,only:[:show,:index] do
  #     resources :codes
  #
  # end

  root(to: "homes#index")

  resources :kinds, only: [:index, :show]

  resources :codes

  resources :kinds, only: [:index, :show]

  resources :users

  resources :sessions,only: [:create,:destroy,:new]


end
