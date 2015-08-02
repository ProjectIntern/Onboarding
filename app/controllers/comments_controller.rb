class CommentsController < ApplicationController
  before_action :require_user, only: [:create]

  def create
    @comment = Comment.new(comment_params)
    @comments = Comment.all
    if @comment.save
      redirect_to :back
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:sender_email, :comment, :receiver_email, :receiver_name, :receiver_id, :sender_name, :sender_id)
    end
end


