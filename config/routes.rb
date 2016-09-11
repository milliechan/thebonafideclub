Rails.application.routes.draw do
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get '/' => 'sessions#index'
   get '/sessions/new' => 'sessions#new'
   get '/users/new' => 'users#new'
   get '/users/:id' => 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
