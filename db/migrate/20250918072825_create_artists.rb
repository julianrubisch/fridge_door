class CreateArtists < ActiveRecord::Migration[8.0]
  def change
    create_table :artists, id: :ulid do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :date_of_birth

      t.timestamps
    end
  end
end
