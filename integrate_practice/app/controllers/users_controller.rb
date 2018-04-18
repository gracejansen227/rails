class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    # render 'new'
  end

  def show
    @user = User.find(params[:id])
    puts @user
    render json: @user
  end

  def create
    @user = User.create(name: params[:name])
    redirect_to '/users'
  end

  def total
    @total = User.all.count
    render json: @total
  end

  def edit
    @user = User.find(params[:id])
  end

  def change
    @user = User.find(params[:id]).update(name: params[:name])

    redirect_to '/users'
  end

end
