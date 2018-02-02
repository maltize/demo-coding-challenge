Rails.application.routes.draw do
  resources :teams
  resources :monsters
	devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root to: 'pages#home'
end
