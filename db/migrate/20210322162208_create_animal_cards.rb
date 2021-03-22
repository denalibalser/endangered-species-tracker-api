class CreateAnimalCards < ActiveRecord::Migration[6.0]
  def change
    create_table :animal_cards do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :endangered_level
      t.string :url
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
