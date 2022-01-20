class Entity < ApplicationRecord
  has_many :document_stores, as: :documentable
end
