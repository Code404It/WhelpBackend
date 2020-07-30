Rails.application.routes.draw do
  resources :kids do
    resources :reviews
  end
  
  
end
