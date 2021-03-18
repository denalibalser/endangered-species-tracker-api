Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:create]
    end
  end 
  
  namespace :api do 
    namespace :v1 do 
      resources :animal_cards
    end
  end 

  namespace :api do 
    namespace :v1 do 
      resources :sessions, only: [:create] #add :logout?
    end
  end 

end
