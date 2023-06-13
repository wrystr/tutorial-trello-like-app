class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @card = @comment.card

    if @comment.save
      respond_to do |format|
        format.turbo_stream
      end
    end
  end

  private


  def comment_params
    params.require(:comment).permit(:card_id, :body)
  end

end
