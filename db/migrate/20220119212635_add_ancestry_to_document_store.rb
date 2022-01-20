class AddAncestryToDocumentStore < ActiveRecord::Migration[6.0]
  def change
    add_column :document_stores, :ancestry, :string
    add_index :document_stores, :ancestry
  end
end
