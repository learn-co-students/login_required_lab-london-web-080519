class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #helper method so available to the view (on the form)
  helper_method :name

  #set session[:name]
  def current_user
    session[:name] ||= nil
  end
end
