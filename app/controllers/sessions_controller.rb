class SessionsController < ApplicationController
  before_action :user_logged_on, only:[:new, :create, :index] 

  def new
  end

  def authenticated
    @user && @user.authenticate(params[:session][:password])
  end


  def create
    @flash = {}
    @user = User.find_by_email(params[:session][:email])
    if authenticated
      session[:id] = @user.id 
      redirect_to '/'
    else
      flash[:error] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    session[:id] = nil
    redirect_to '/login'
  end

  def index
  end
end
