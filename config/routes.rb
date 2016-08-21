Rails.application.routes.draw do
  resources :survivors do
  	resources :flags
  	resources :trades
  end
  resources :reports
  
  root 'welcome#index'
end
