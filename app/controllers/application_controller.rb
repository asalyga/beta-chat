class ApplicationController < ActionController::Base

  def logged_user
    @logged_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!logged_user
  end

  def require_user
    unless logged_in?
      flash[:error] = 'You must log in first'
      redirect_to login_path
    end
  end

end
