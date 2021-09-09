Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "homes#index"
  resources :courses

  # delete "/courses/:id" , to: "courses#destroy"

  resources :profiles
  resources :favorites, only: [:create, :destroy, :index]
  resources :registercourses
end
