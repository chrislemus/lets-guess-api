Rails.application.routes.draw do
  # get '/phrases/categories', to: 'categories#index', as: 'phrases_categories'
  resources :phrases, only: [:index] do 
    resources :game_records, only:[:index]
  end 

  resources :game_records, only:[:index, :create]

  resources :categories, only: [:show, :index] do 
    resources :phrases, only:[:index]
  end
  
end
