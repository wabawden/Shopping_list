class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.order(id: :asc)
    @recipe = Recipe.new
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  def update
    @recipe.save
    if @recipe.save
        redirect_to recipes_path
      else
        render recipes_path
      end
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    if @recipe.save
        redirect_to recipes_path
      else
        render recipes_path
      end
  end

  def delete_all
    Recipe.delete_all
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


  private

  def recipe_params
    params.require(:recipe).permit(:name)
  end

end
