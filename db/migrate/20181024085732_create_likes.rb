class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :map_id

      t.timestamps

      t.index :user_id
      t.index :map_id
      t.index [:user_id, :map_id], unique: true
    end
  end
end
