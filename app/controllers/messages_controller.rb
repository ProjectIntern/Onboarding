class MessagesController < ApplicationController
	#before_action :user_logged_on, only:[:new, :create] 
  before_action :require_user, only:[:index, :show, :update, :edit, :new, :create]
	before_action :find_message, only: [:show, :edit, :update, :destroy]
	#before_action :get_hire_types, only: [:new, :create]

	def index
		@messages = Message.all.order("created_at DESC")
	end

	def new
		@message = current_user.messages.build
	end

	def create
		@message = current_user.messages.build(message_params)
		if @message.save
			redirect_to :back
		else
			render 'new'
		end	
	end

	def destroy
		@message.destroy
		redirect_to :back
	end

	private 
	def message_params
		params.require(:message).permit(:description, :user_id, :user_name, :hire_type)
	end

	def find_message
		@message = Message.find(params[:id])
	end

end
