Rails.application.routes.draw do
  get 'dojos' => 'dojos#index'
  get 'dojos/new' => 'dojos#new'
  post 'dojos' => 'dojos#create'
  get 'dojos/:id' => 'dojos#show'
  get 'dojos/:id/edit' => 'dojos#edit'
  get 'dojos/:id/destroy' => 'dojos#destroy'
  post 'update/:id' => 'dojos#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
