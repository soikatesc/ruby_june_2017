Rails.application.routes.draw do
  get 'dojos' => 'dojos#index'
  get 'dojo/new' => 'dojos#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
