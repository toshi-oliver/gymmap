class AddContentToMaps < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :content, :text
  end
end
