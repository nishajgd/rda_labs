class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :random_username
      t.string :remote_ip

      t.timestamps
    end
  end
end
