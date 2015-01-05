class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def signed_in?
    session[:user].present?
  end

  def current_user
    User.find_by(name: session[:user])
  end

end
