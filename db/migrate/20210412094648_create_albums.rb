class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.references :band, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
