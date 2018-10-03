class ChangeDatatypeImageOfMaps < ActiveRecord::Migration[5.2]
  def change
    change_column :maps, :image, :string
  end
end
  