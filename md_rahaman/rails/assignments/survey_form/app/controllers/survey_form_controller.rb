class SurveyFormController < ApplicationController
	def index
		session[:views] ||= 0
		# render text: 'What do you want me to say..?'
	end

	def process_survey
		session[:views] = session[:views] + 1
		session[:result] = params[:survey]
		flash[:success] = "You have successfully submitted this form #{session[:views]} times now"
		redirect_to '/result'
	end

	def result
		@result = session[:result]
	end
end


# user = User.new(name: params[:name], email: params[:email], password: params[:password])