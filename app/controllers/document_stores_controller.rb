class DocumentStoresController < ApplicationController

  def index
    render json: build_folder_structure(DocumentStore.first)
  end

  private

  def build_folder_structure(document_store)
    object = document_store.attributes
    object[:documents] = document_store.documents
    object[:children_folders] = []
    document_store.children_folders.each do |children_folder|
      object[:children_folders].push(build_folder_structure(children_folder))
    end
    object
  end

end





