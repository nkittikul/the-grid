class Terrain < ActiveRecord::Base
  has_many :tiles
  belongs_to :grid
  mount_uploader :image, ImageUploader
  validates :image, presence: true

end
