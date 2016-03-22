class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.float :price
      t.date :release_date
      t.boolean :featured
      t.string :photo_url

      t.timestamps
    end
  end
end
