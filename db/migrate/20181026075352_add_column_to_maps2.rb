class AddColumnToMaps2 < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :likes_count, :integer
  end
end
