Rails.application.routes.draw do
  get '/phrases/categories', to: 'categories#index', as: 'phrases_categories'
  resources :phrases, only: [:index]
  resources :categories, only: [:show] do 
    resources :phrases, only:[:index]
  end
  resources :game_records, only:[:index, :create]
end
