class SurveysController < ApplicationController
  def index

  end

  def submit
    @user = User.create(name: params[:name], location: params[:location], language: params[:language], comment: params[:comment])

    if(!session[:visits])
      session[:visits] = 0
    else
      session[:visits] += 1
    end
    redirect_to '/result'
  end

  def result
    @user = User.last
    puts @user
  end

  def back
    redirect_to '/index'
  end


end
