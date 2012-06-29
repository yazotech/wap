Wap::Application.routes.draw do

  namespace :admin do
    resources :photos
    resources :mobile_types
    resources :software_types
    resources :softwares
    resources :downfiles
    
    match 'upload' => 'upload_resource#index'
   
  end
  
  root :to => 'wap#index'
  match '/admin' => 'admin/home#index'

  match 'software/:id' => 'wap#show'
  match 'softwares/:id' => 'wap#more'
  
  match 'login' => 'login#login'
  match 'logout' => 'login#logout'
end
