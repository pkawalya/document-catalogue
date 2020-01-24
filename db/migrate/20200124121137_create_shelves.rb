class CreateShelves < ActiveRecord::Migration[6.0]
  def change
    create_table :shelves do |t|
      t.string :name
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
