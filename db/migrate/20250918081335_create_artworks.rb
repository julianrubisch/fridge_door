class CreateArtworks < ActiveRecord::Migration[8.0]
  def change
    create_table :artworks, id: :ulid do |t|
      t.references :artist, null: false, foreign_key: true, type: :ulid
      t.string :title, null: false
      t.date :created_on

      t.timestamps
    end
  end
end
