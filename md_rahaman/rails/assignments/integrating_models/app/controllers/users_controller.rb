class UsersController < ApplicationController
  def index
    users = User.all
    p users
    render json: users
  end

  def new 
  end

  def show
    puts params[:id]
    user = User.find(id=params[:id])
    render json: user
  end

  def update
  end

  def update_put
    user = User.find(User.first)
    user.update(name: params[:name])
    redirect_to '/users'
  end

  def create
    puts params[:name]
    User.create(name: params[:name])
    redirect_to '/users'
  end

  def total_users
    render text: "Total numbers of users: #{User.all.count}"
  end
end
