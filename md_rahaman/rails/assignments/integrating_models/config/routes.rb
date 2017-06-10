Rails.application.routes.draw do
  get 'users' => "users#index"

  get 'users/new' => "users#new"

  get 'users/show/:id' => "users#show"

  get 'users/update/:id' => "users#update"

  post '/create' => "users#create"

  get 'users/total_users' => "users#total_users"

  post '/update_put' => "users#update_put"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
