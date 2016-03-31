Rails.application.routes.draw do
  devise_for :users
  root to: 'games#index'
  resources :games # NHO: any merit to nested resource `games` under `users`? Or all games available to all users
end
