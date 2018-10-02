class RemoveUserFromMaps < ActiveRecord::Migration[5.2]
  def up
    remove_column :Maps, :user_id
  end
end
