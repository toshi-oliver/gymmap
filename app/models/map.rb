class Map < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :image_size
  validates :name, presence: true
  validates :category_id, presence: true
  validates :place_id, presence: true


  def image_size
    if image.size > 5.megabytes
      errors.add(:image, "should be less than 5MB")
    end
  end
end
