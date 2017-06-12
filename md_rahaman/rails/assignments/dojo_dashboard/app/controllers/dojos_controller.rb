class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
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

  def show
  	@dojo = Dojo.find(id=params[:id])
  end

  def edit
  	@dojo = Dojo.find(id=params[:id])
  end

  def destroy
  	dojo = Dojo.find(id=params[:id])
  	dojo.delete
  	redirect_to '/dojos'
  end

  def update
  	dojo = Dojo.find(id=params[:id])
  	dojo.update(
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
  		redirect_to "/dojos/#{params[:id]}/edit"
  	end
  end
end



