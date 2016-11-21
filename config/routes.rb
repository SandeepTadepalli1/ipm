Rails.application.routes.draw do
  resources :ip_assets
  devise_for :users
  root 'ip_assets#index'
  # get 'dashboard' => 'users#show' ,as: 'user'
  get ':username' => 'users#show' , as: 'user' # As user gives us access to the user_path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
