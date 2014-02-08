BoilerDevise::Application.routes.draw do

  devise_for :users, :admins

  devise_scope :user do
    get     'signup',   to: 'devise/registrations#new'
    get     'login',    to: 'users/sessions#new'
  end

  get '/token' => 'home#token', as: :token

  resources :home, only: :index
  resources :admins, only: :index

  root 'home#index'

end
