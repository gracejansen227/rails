class StudentsController < ApplicationController
  def index
    @dojo = Dojo.find(params[:dojo_id])
    @students = Student.where(dojo_id: params[:dojo_id])
  end

  def create
    puts params[:id]
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo_id: params[:id])
    # puts params[:dojo_id]
    redirect_to ''
  end

  def new
    p params[:dojo_id]
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.all
  end

  def edit
    @student = Student.find(params[:id])

    user_dojo = Student.find(params[:id]).dojo_id
    @user_dojo = Dojo.find(user_dojo)
    @dojos = Dojo.all
    

  end

  def show
    @student = Student.find(params[:id])
    dojo_id = Student.find(params[:id]).dojo_id
    @dojo = Dojo.find(dojo_id)
    puts dojo_id
    @students = Student.where(dojo_id: dojo_id).where.not(id: params[:id])
    #exclude(id : params[:id])

  end

  def update
    @student = Student.find(params[:id]).update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo_id: params[:dojo_id])
    redirect_to ''
  end

  def destroy
    @student = Student.find(params[:id]).destroy
    redirect_to ''
  end
end
