class AddLatLogToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :address, :string
    add_column :users, :is_admin, :boolean, default: false
  end
end
