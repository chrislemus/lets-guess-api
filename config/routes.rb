Rails.application.routes.draw do
  resources :game_records, only:[:index, :create]

  resources :phrases, only: [:index] do 
    resources :game_records, only:[:index]
  end 
  resources :categories, only: [:show, :index] do 
    resources :phrases, only:[:index]
  end
  
end
