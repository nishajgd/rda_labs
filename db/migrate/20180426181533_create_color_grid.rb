class CreateColorGrid < ActiveRecord::Migration[5.1]
  def change
    create_table :color_grids do |t|
      t.integer :user_id
      t.integer :grid_id
      t.string :color
      
      t.timestamps
    end
  end
end
