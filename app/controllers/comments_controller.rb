class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.save!
    if @comment.save
        redirect_to items_path
      else
        redirect_to items_path
      end
  end

  def update
  end

  def destroy
  end

  def index
  end

  def new
    @comment = Comment.new
    @item = Item.find(params["format"])
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :item_id)
  end
end
