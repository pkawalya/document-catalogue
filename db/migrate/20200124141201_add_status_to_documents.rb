class AddStatusToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :is_taken, :boolean, default: false
  end
end
