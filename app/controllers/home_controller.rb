class HomeController < ApplicationController
  def index
    @current_user = User.get_user(request.remote_ip)
    @user_colored_grid_ids, @user_colored_grid_colors = ColorGrid.get_latest_colored_grids(@current_user)
  end
end
