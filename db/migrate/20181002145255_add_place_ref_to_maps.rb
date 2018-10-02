class AddPlaceRefToMaps < ActiveRecord::Migration[5.2]
  def change
    add_reference :maps, :place_id
  end
end
