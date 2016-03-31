class CommentsController < ApplicationController

  def create
    post_id = params[:post_id]
    text = params[:comments][:text]
      @comment = Comment.new({ text: text, post_id: post_id, user_id: current_user.id })
        if @comment.save

       redirect_to post_path(id: post_id)
    end
  end
end
