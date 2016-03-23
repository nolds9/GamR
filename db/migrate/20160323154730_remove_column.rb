class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :games, :category_id
  end
end
