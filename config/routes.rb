Rails.application.routes.draw do
  resources :ip_assets
  devise_for :users
  root 'ip_assets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
