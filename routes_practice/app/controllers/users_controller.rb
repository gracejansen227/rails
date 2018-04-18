class UsersController < ApplicationController
  def hello
    render text: "Hello CodingDojo!"
  end

  def say
    render text: "Saying Hello"
  end

  def joe
    render text: "Saying Hello Joe!"
  end

  def michael
    redirect_to '/say/hello/joe'
  end

  def index
    render text: "What do you want me so say?"
  end

  def times
    if (!session[:times])
      session[:times] = 0
    else
      session[:times] += 1
  end
    render text: "You have seen this site #{session[:times]} times"
  end

  def restart
    session[:times] = 0
    render text: "You have destroyed the session"
  end



end
