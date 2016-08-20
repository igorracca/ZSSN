Rails.application.routes.draw do
  resources :survivors do
  	resources :flags
  end
  resources :reports
  
  root 'welcome#index'
end
