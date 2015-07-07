class UsersController < ApplicationController
  before_action :user_logged_on, only:[:new, :create, :exists] 
  before_action :require_user, only:[:index, :show, :update, :edit]
  
  def new
    @user = User.new
  end

  def exists
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    code = "gapinc"
    @user = User.new(user_params)
    if h = User.find{ |h| h['email'] == @user.email.to_str or @user.code.to_str != code}
      redirect_to '/exists'
    elsif @user.save
      session[:id] = @user.id
      @user[:image] = "http://skolafund.com/img/sponsorskolafund-picture.jpg"
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :code, :image, :facebook, :linkedin, :twitter, :instagram, :location, :position, :school, :about)
    end
end
