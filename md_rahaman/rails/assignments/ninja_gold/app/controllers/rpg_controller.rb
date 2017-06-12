class RpgController < ApplicationController
	def index
		if !session['gold']
			session['gold'] = 0
		end
		session['activities'] ||= []

		@gold = session['gold']
		@activities = session['activities']
	end

	def process_money
		p params[:building]
		if params[:building] == "farm"
			gold = rand(10 .. 20)
		end

		if params[:building] == "cave"
			gold = rand(5 .. 10)
		end

		if params[:building] == "house"
			gold = rand(2 .. 5)
		end

		if params[:building] == "casino"
			gold = rand(-50 .. 50)
		end

		if gold > 0 
			session['activities'].push("Earned #{gold} golds from the #{params[:building]}! #{Time.now.strftime('%Y/%m/%d %l:%M %P')}")
		else
			session['activities'].push("Entered a casino and lost #{gold} golds... Ouch #{Time.now.strftime('%Y/%m/%d %l:%M %P')}")
		end
		session[:gold] += gold


		redirect_to :root
	end
end
