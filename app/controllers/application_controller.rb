class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def portal
  	render text: "Hello there!  This will eventually be my personal/professional webpage,\n but for now I am trying to find a place for my server!"
  end
end
