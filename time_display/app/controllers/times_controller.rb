class TimesController < ApplicationController
  def index
    @time = DateTime.current.strftime(" %b %d, %Y")
    @newtime = Time.new
  end

end
