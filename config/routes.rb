Rails.application.routes.draw do
  get '/phrases/categories', to: 'categories#index', as: 'phrases_categories'
  resources :phrases, only: [:index]
  resources :game_records, only:[:index, :create]
end
