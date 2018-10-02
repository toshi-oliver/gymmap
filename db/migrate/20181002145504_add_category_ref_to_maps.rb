class AddCategoryRefToMaps < ActiveRecord::Migration[5.2]
  def change
    add_reference :maps, :category_id
  end
end
