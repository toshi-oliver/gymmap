class Like < ApplicationRecord
  belongs_to :user
  belongs_to :map
  validates :user_id, presence: true
  validates :map_id, presence: true
end
