Rails.application.routes.draw do
  root 'urls#new'

  resources :urls, only: [:create, :show]
  resources :concise, only: [:show], path:''

end
