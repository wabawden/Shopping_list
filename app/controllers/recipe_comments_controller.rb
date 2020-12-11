class RecipeCommentsController < ApplicationController

    def create
      @recipe_comment = RecipeComment.new(comment_params)
      @recipe_comment.save!
      if @recipe_comment.save
          redirect_to recipes_path
        else
          redirect_to recipes_path
        end
    end
  
    def update
    end
  
    def destroy
    end
  
    def index
    end
  
    def new
      @recipe_comment = RecipeComment.new
      @recipe = Recipe.find(params["format"])
    end
  
    private
  
    def comment_params
      params.require(:recipe_comment).permit(:content, :recipe_id)
    end
end
  
