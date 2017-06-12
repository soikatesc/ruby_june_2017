Rails.application.routes.draw do
  get 'dojos' => 'dojos#index'
  get 'dojos/new' => 'dojos#new'
  post 'dojos' => 'dojos#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
