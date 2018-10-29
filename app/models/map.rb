class Map < ApplicationRecord
  acts_as_paranoid
  belongs_to :user
  has_many :likes, dependent: :destroy
  mount_uploader :image, ImageUploader
  validate :image_size
  validates :name, presence: true
  validates :category_id, presence: true
  validates :place_id, presence: true
  validates :image, presence: true

  def image_size
    if image.size > 5.megabytes
      errors.add(:image, "should be less than 5MB")
    end
  end

  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end
end
