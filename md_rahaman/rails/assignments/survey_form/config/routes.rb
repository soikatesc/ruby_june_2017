Rails.application.routes.draw do
	root 'survey_form#index'
	post 'process_survey' => 'survey_form#process_survey'
	get 'result' => "survey_form#result"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
