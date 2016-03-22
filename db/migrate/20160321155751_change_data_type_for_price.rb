class ChangeDataTypeForPrice < ActiveRecord::Migration
  def change
    change_column :games, :price, :float
  end
end
