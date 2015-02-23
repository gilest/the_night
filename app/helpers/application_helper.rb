module ApplicationHelper

  def signed_in?
    session[:user_id].present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if signed_in?
  end

end
