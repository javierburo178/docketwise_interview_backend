class CreateDocumentStores < ActiveRecord::Migration[6.0]
  def change
    create_table :document_stores do |t|
      t.string  :name
      t.bigint  :documentable_id
      t.string  :documentable_type

      t.timestamps
    end
  end
end
