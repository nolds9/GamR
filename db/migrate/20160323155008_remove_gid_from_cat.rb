class RemoveGidFromCat < ActiveRecord::Migration
  def change
    remove_column :categories, :game_id
  end
end
