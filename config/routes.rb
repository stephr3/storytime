Rails.application.routes.draw do
  root :to => 'stories#index'
  resources :stories do
   resources :components
  end

  resources :stories do
    resources :images
  end

  resources :images 
end
