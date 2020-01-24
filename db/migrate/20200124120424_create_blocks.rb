class CreateBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :blocks do |t|
      t.string :name
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
  end
end
