class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    @total = Dojo.all.count
  end

  def create
    @dojo = Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    redirect_to ''
  end

  def new
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def change
    @dojo = Dojo.find(params[:id]).update(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    redirect_to ''
  end

  def delete
    @dojo = Dojo.find(params[:id]).destroy
    redirect_to ''
  end



end
