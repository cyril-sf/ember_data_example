EmberDataExample::Application.routes.draw do
  resources :comments


  resources :posts


  resources :users


  resources :contacts
  root :to => 'application#index'
  match '/*path' => 'application#index'
end
