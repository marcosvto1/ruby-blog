Rails.application.routes.draw do
<<<<<<< HEAD
  root 'posts#index'
  
  resources :posts do 
    get :search, on: :collection
  end
  resources :comments, only: %i[create]
=======
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
>>>>>>> 47d91781e7abde379cf7c3c81b5a7b3970866780
end
