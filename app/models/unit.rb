class Unit < ActiveRecord::Base
  has_many :tiles
  belongs_to :grid
  mount_uploader :map_image, GifUploader
  mount_uploader :portrait_image, ImageUploader
  validates :map_image, presence: true

end
