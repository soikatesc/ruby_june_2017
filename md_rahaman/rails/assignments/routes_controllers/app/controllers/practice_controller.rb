class PracticeController < ApplicationController
	def root
		render text: 'What do you want me to say..?'
	end

	def index
		render text: 'Hello World'
	end

	def say_hello
		render text: 'Hello Coding Dojo....'
	end

	def say_hello_joe
		render text: 'Hello Joe...'
	end

	def say_hello_michael
		render text: 'Hello Michael...'
	end

	def times
		if !session['times']
			session['times'] = 0
		end
		1.upto(10){|i| print'/'}
		print 'session:--', session['times']
		session['times'] += 1
		render text: "You visited this page #{session['times']} times.."
	end

	def restart
		# session.clear
		session['times'] = nil
		render text: 'Destroyed the session...'
	end
end
