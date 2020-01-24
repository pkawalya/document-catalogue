class Document < ApplicationRecord
  belongs_to :vendor
  belongs_to :category
  belongs_to :folder

  mount_uploader :attachment, AttachmentUploader
end
