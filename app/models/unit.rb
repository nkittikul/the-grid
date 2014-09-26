class Unit < ActiveRecord::Base
  # belongs_to :tile
  # belongs_to :grid
  belongs_to :unitable, polymorphic: true
  has_many :items, as: :itemable
  has_many :weapons, as: :weaponable
  mount_uploader :map_image, ImageUploader
  mount_uploader :portrait_image, ImageUploader
  #validates :map_image, presence: true

  def give_weapons(weapons)
    weapons.each do |weapon|
      weapon.dup.update_attributes(unit: self)
    end
  end

  def initialize_dup(prototype)
    super
    #self.update_attributes(grid: nil, tile: nil)
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
