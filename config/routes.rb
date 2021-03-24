Rails.application.routes.draw do
  
  resources :game_records, only:[:index, :create]

  resources :phrases, only: [:index] do 
    resources :game_records, only:[:index]
    get '/stats_elapsed_time', to: 'phrases#stats_elapsed_time'
  end 
  resources :categories, only: [ :index] do 
    resources :phrases, only:[:index]
  end
  
end
