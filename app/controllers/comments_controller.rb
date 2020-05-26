class CommentsController < ApplicationController
  def new_comment
    @new_comment = Comment.new
  end

  def create_comment
    @comment = Comment.new
    if @comment.save
      redirect_to @comment
    else
      render :new_comment
    end
  end
end
