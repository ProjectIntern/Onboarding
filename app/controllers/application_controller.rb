class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  helper_method :user_logged_on

  def user_logged_on
    if current_user
      redirect_to '/'
    end
  end 
end
