Rails.application.routes.draw do
  get 'welcomes/start'
   root 'welcomes#start'
   post 'welcomes/new' => 'welcomes#create'
   post 'welcomes/start' => 'welcomes#show'
   resources :welcomes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
