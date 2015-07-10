class ConversationsController < ApplicationController

def new
  @conversation = Conversation.new
end

def create
    @conversation = Conversation.new(conversation_params)
    @conversation.sender = current_user.email 
    @conversation.user_id = current_user.id
    if @conversation.save
      redirect_to(:back)
    end
  end

  private
    def conversation_params
      params.require(:conversation).permit(:sender, :comment, :receiver_email, :receiver_name, :receiver_image, :receiver_id)
    end

  end
