class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  	p @dojos
  end

  def new
  end

  def create
  	dojo = Dojo.new(
  		branch: params[:dojo]['branch'],
  		street: params[:dojo]['street'],
  		city: params[:dojo]['city'],
  		state: params[:dojo]['state']
  	)

  	if dojo.valid?
  		dojo.save
  		redirect_to '/dojos'
  	else
  		flash[:errors] = dojo.errors.full_messages
  		redirect_to '/dojos/new'
  	end
  end
end


