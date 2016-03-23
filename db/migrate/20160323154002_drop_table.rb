class DropTable < ActiveRecord::Migration
  def change
    remove_table :categories
  end
end
