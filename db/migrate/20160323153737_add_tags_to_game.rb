class AddTagsToGame < ActiveRecord::Migration
  def change
    add_column :games, :tags, :string, array: true, default: []
  end
end
