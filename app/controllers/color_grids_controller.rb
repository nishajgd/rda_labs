class ColorGridsController < ApplicationController
  def create
    color_grid_params = params.permit(:user_id, :grid_id, :color)
    color_grid = ColorGrid.create(color_grid_params)
  end

  def show
    color_grids = ColorGrid.joins(:user).where("grid_id = ? and users.id != ?", params[:id], params[:user_id]).order(created_at: :DESC).limit(3)
    render json: color_grids
  end
end
