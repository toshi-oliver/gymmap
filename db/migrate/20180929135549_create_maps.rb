class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string      :name, null: false
      t.reference   :category_id, foreign_key: true, null: false
      t.reference   :place_id, foreign_key: true, null: false
      t.reference   :user_id, foreign_key: true, null: false
      t.content     :text
      t.text        :image, unique: true
      t.timestamps
    end
  end
end
