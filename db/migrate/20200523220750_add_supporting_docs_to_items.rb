class AddSupportingDocsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :supporting_docs, :text
  end
end
