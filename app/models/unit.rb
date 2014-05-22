class Unit < ActiveRecord::Base
  belongs_to :tile
  has_many :items
  has_many :weapons
  belongs_to :grid
  mount_uploader :map_image, ImageUploader
  mount_uploader :portrait_image, ImageUploader
  #validates :map_image, presence: true

  def initialize_dup(prototype)
    super
    self.update_attributes(grid: nil, tile: nil)
    self.current_hp = prototype.max_hp
    self[:map_image] = nil
    self[:portrait_image] = nil

    prototype.items.each do |item|
      item.dup.update_attributes(unit: self)
    end

    prototype.weapons.each do |weapon|
      weapon.dup.update_attributes(weapon: self)
    end
  end

end
