# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Entity.destroy_all
DocumentStore.destroy_all
Document.destroy_all
new_entity = Entity.create(name: "Inmigration", description: "It is a new test")
root_folder = new_entity.document_stores.create(name: "root folder")
son_folder = root_folder.children_folders.create(name: "son folder")
grand_son_folder = son_folder.children_folders.create(name: "grand_son_folder")
document_one = Document.create(name: "new document", description: "its ok", url: "s3bucket.com", document_store_id: root_folder.id )
document_two = Document.create(name: "new document two", description: "its ok 1", url: "s3bucket1.com", document_store_id: grand_son_folder.id )

## upload documents to the system 
## documents will give us an string with the URL
## those documents can be attached as Folders 

## DocumentStore
## DocumentStore -> Folder -> has_many: documents -> name: "string", url: "s3docketwise.com"
## Entity -> DocumentStore
## DocumentStore -> Root -> hijos -> hermanos -> 
