class CreatePaintings < ActiveRecord::Migration[5.2]
  def change
    create_table :paintings do |t|
      t.integer :artist_id

      t.timestamps
    end
  end
end
