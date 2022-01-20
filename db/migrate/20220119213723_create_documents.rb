class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string  :name
      t.string  :url
      t.text    :description
      t.references :document_store, foreign_key: true

      t.timestamps
    end
  end
end
