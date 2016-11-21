Rails.application.routes.draw do
  resources :ip_assets
  devise_for :users
  root 'ip_assets#index'
  # get 'dashboard' => 'users#show' ,as: 'user'
  get ':username' => 'users#dashboard' , as: 'user' # As user gives us access to the user_path
  
  get 'users/addipcommittee'
  get 'users/removeipcommittee'
  
  post 'users/changeroletoIpcommittee'
  post 'users/changeroletousers'
  
  # member do
  # 	post '/changeroletoIpcommittee' => 'users#changeroletoIpcommittee'
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
