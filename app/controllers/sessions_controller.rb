class SessionsController < ApplicationController
  before_action :user_logged_on, only:[:new, :create, :index] 

  def new
  end

  def authenticated
    @user && @user.authenticate(params[:session][:password])
  end


  def create
    @user = User.find_by_email(params[:session][:email])
    if authenticated
      session[:id] = @user.id 
      redirect_to '/'
    else
      redirect_to '/error'
      flash[:notice] = "Wrong Email or Password"
    end
  end

  def destroy
    session[:id] = nil
    redirect_to '/login'
  end

  def index
  end
end
