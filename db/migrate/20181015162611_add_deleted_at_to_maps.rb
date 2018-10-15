class AddDeletedAtToMaps < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :deleted_at, :datetime
  end
end
