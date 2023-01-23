Rails.application.routes.draw do
 
  root 'users#index'
  resources :users do 
    get 'create_follow', on: :member
    get 'delete_follow', on: :member
  end
end
