class Like < ApplicationRecord
  belongs_to :user
  belongs_to :map, counter_cache: :likes_count
  validates :user_id, presence: true
  validates :map_id, presence: true
end
