Rails.application.routes.draw do
 
  root 'users#index'
  resources :users do 
    post 'create_follow', on: :member
    post 'delete_follow', on: :member
    
  end
end
