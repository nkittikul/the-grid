class Terrain < ActiveRecord::Base
  belongs_to :terrainable, polymorphic: true
  mount_uploader :image, ImageUploader

  def initialize_dup(prototype)
    super
    self[:image] = nil
  end

end


