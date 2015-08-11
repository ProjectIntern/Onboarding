class UsersController < ApplicationController
  before_action :user_logged_on, only:[:new, :create] 
  before_action :require_user, only:[:index, :show, :update, :edit]

  def new
    @user = User.new
  end

  def index
    if params[:search]
      @users = User.where("first_name LIKE ? OR last_name LIKE ? OR email LIKE?" , "#{params[:search]}", "#{params[:search]}", "#{params[:search]}")  
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
    @comment = Comment.new
    @comments = Comment.all
    @contacts = []
    @users = []
    Comment.all.each do |n|
      if n.sender_email == current_user.email
        if !@contacts.include?(n.receiver_id)
          @contacts.push(n.receiver_id)
        end
      end
       if n.receiver_email == current_user.email
        if !@contacts.include?(n.sender_id)
          @contacts.push(n.sender_id)
        end
      end
    end
    @contacts.each do |i|
      @users.push(User.find(i))
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      if params[:user][:image].blank?
        redirect_to :back
      else
        render :action => 'crop'
      end
    else
      render :action => 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :terms, :code, :image, :facebook, :linkedin, :twitter, :instagram, :location, :position, :about)
  end
end
