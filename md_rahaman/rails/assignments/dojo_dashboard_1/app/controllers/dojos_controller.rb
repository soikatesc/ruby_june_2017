class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  	p @dojos
  end

  def new
  end
end
