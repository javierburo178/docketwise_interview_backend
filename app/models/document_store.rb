class DocumentStore < ApplicationRecord
  belongs_to :documentable, polymorphic: true
  has_many :documents, dependent: :destroy
  has_many :children_folders, as: :documentable, class_name: "DocumentStore", dependent: :destroy
end
