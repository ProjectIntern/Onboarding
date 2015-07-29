class MessagesController < ApplicationController
	#before_action :user_logged_on, only:[:new, :create] 
  	before_action :require_user, only:[:index, :show, :update, :edit, :new, :create]
	before_action :find_message, only: [:show, :edit, :update, :destroy]

	def index
		@messages = Message.all.order("created_at DESC")
		@hire_types = Array["GapTech Undergrads Interns", "Business Undergrads Interns", "MBA Interns", "Full Time Employees", "Contractors"]
	end

	def new
		@message = current_user.messages.build
	end

	def create
		@message = current_user.messages.build(message_params)
		if @message.save
			redirect_to messages_path
		else
			render 'new'
		end	
	end

	def edit

	end

	def update
		if @message.update(message_params)
			redirect_to messages_path
		else
			render 'edit'
		end
	end

	def destroy
		@message.destroy
		redirect_to messages_path
	end

	def get_messages_of_type(hire_type)
		@type_messages = Message.all.where(["hire_type = ?", hire_type]).order("created_at DESC")
	end

	private 

		def message_params
			params.require(:message).permit(:description, :user_id, :hire_type)
		end

		def find_message
			@message = Message.find(params[:id])
		end
end
