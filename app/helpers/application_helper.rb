module ApplicationHelper

  def signed_in?
    session[:user].present?
  end

  def current_user
    User.find_by(name: session[:user])
  end

end
