class ConversationsController < ApplicationController
  before_action :require_user, only: [:new, :create]

  def new
    @conversation = Conversation.new
  end

  def create
    @conversation = Conversation.new(conversation_params)
    if @conversation.save
      redirect_to(:back)
    end
  end

  private
    def conversation_params
      params.require(:conversation).permit(:sender_email, :comment, :receiver_email, :receiver_name, :receiver_id, :sender_name, :sender_id)
    end
end
