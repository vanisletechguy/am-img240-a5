Rails.application.routes.draw do
  get 'generator/generate_data'
  devise_for :users
  resources :genres
  resources :songs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
