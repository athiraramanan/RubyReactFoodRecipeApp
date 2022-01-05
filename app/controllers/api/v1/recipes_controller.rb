class Api::V1::RecipesController < ApplicationController
  def index
    recipies = Recipe.all.order('created_at desc')
    render json: recipies
  end

  def create
    recipe = Recipe.new(recipe_params)
    if recipe.save
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def show
    if recipe
      render json: recipe
    else
      render josn: recipe.errors
      # render josn: {message: 'Recipes not found'}
    end
  end

  def destroy
    if recipe
      render json: {message: 'Recipes deleted'}
    else
      render josn: {message: 'Recipes not found'}
    end
  end

  private 

  def recipe
    @recipe ||= Recipe.find(params[:id])
  end

  def recipe_params
    params.permit(:name,:image,:ingredients, :instructions)
  end
end
