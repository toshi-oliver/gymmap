class AddUserRefToMaps < ActiveRecord::Migration[5.2]
  def change
    add_reference :maps, :user, index: true
  end
end
