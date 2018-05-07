class ColorGridsController < ApplicationController
  #TODO Testcases
  def create
    color_grid_params = params.permit(:user_id, :grid_id, :color)
    color_grid = ColorGrid.create(color_grid_params)
  end

  def show
    color_grids = ColorGrid.color_history(params[:id], params[:user_id])
    render json: color_grids
  end
end
