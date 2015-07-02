class UsersController < ApplicationController
  before_action :user_logged_on, only:[:new, :create, :index] 
  
  def new
    @user = User.new
  end

  def index
    @user = User.new
  end

  def create
    code = "gapinc"
    @user = User.new(user_params)
    if h = User.find{ |h| h['email'] == @user.email.to_str or @user.code.to_str != code}
      redirect_to '/exists'
    elsif @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :code)
    end
end
