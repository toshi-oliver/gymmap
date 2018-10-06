class AddColumnToMaps < ActiveRecord::Migration[5.2]
  def change
    add_column  :maps,  :image,  :text
    add_column  :maps,  :user_id,  :integer
    add_column  :maps,  :category_id,  :integer
    add_column  :maps,  :place_id,  :integer
  end
end
