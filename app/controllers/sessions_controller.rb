class SessionsController < ApplicationController
  before_action :user_logged_on, only:[:new, :create] 

  def new
  end

  def authenticated
    @user && @user.authenticate(params[:session][:password])
  end


  def create
    @user = User.find_by_email(params[:session][:email])
    if authenticated
      session[:user_id] = @user.id 
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

  def index
  end
end
