class MessagesController < ApplicationController
	#before_action :user_logged_on, only:[:new, :create] 
  	before_action :require_user, only:[:index, :show, :update, :edit]
	before_action :find_message, only: [:show, :edit, :update, :destroy]

	def index
		@messages = Message.all.order("created_at DESC")
	end

	def new
		@message = current_user.messages.build #Message.new
	end

	def create
		@message = current_user.messages.build(message_params) #Message.new(message_params)
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


	private 

		def message_params
			params.require(:message).permit(:description, :user_id)
		end

		def find_message
			@message = Message.find(params[:id])
		end
end
