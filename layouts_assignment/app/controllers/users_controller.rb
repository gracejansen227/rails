class UsersController < ApplicationController

  layout "two_column"
  def index
    @users = User.all
  end

  def new

  end

   def create
     @user = User.create(first_name: params[:first_name], last_name: params[:last_name], favorite_language: params[:favorite_language])
   end


end
