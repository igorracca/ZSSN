Rails.application.routes.draw do
  resources :survivors
  resources :reports
  
  root 'welcome#index'
end
