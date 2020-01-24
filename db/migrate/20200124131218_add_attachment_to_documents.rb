class AddAttachmentToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_column :documents, :attachment, :string
  end
end
