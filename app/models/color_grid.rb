class ColorGrid < ApplicationRecord
  belongs_to :user
  NOOFGRIDS =  Range.new(1,34)
  validates :color, presence: true

  def self.get_latest_colored_grids(user)
    user_colored_grids = user.color_grids
    latest_colored_grids =  user_colored_grids.group_by{|h| h[:grid_id]}.map{|_, v| v.max_by {|el| el[:created_at]}}
    user_colored_grid_ids = latest_colored_grids.map(&:grid_id)
    user_colored_grid_colors = latest_colored_grids.map(&:color)
    return user_colored_grid_ids, user_colored_grid_colors
  end
end
