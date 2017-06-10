Rails.application.routes.draw do
  # get 'users/index'

  # get 'users/new'

  # get 'users/show'

  # get 'users/update'

  # get 'users/create'

  # get 'users/total_users'

	root 'practice#root'
	get 'hello' => "practice#index"
	get 'say/hello' => "practice#say_hello"
	get 'say/hello/joe' => "practice#say_hello_joe"
	get 'say/hello/micheal' => "practice#say_hello_michael"
	get 'times' => "practice#times"
	get 'times/restart' => "practice#restart"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



# get "products" => "products#index"
# get "products/new" => "products#new"
# post "products" => "products#create"
# get "products/:id" => "products#show"
# get "products/:id/edit" => "products#edit"
# patch "products/:id" => "products#update"
# delete "products/:id" => "products#destroy"