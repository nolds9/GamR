class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.float :price
      t.string :photo_url
      t.string :tags
      t.boolean :featured
      t.date :release_date
    end
  end
end
