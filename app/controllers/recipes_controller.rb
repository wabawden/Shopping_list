class RecipesController < ApplicationController
  def index
    @recipes = Recipe.where(current: true).order(id: :asc)
    @recipe = Recipe.new
    @recipes_past = Recipe.where(current: false).order(name: :asc)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.current = false
    @recipe.save
    redirect_to recipes_path
  end

  def update
  end

  def toggle_current
    @recipe = Recipe.find(params[:id])
    @recipe.current = !@recipe.current
    @recipe.save
    redirect_to recipes_path
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
    Recipe.all.each do |recipe|
      recipe.current = false
      recipe.save
    end
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def selected_recipe
    id = params[:id]
    @selected_recipe = Recipe.find(id: id)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name)
  end

end
