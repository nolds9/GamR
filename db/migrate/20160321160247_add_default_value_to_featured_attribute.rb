class AddDefaultValueToFeaturedAttribute < ActiveRecord::Migration
  def change
     change_column :games, :featured, :boolean, :default => false
  end
end
