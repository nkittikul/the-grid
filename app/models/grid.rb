class Grid < ActiveRecord::Base
  after_save :find_or_create_tiles
  has_many :tiles
  has_many :terrains, as: :terrainable
  has_many :units
  has_many :items
  has_many :weapons

  def find_or_create_tiles
    self.width.times do |x|
      self.height.times do |y|
        self.tiles.find_or_create_by(x: x, y: y)
      end
    end
  end

  def initialize_dup(prototype)
    super
    prototype.units.each do |unit|
      unit.dup.update_attributes(grid: self)
    end

    prototype.items.each do |item|
      item.dup.update_attributes(grid: self)
    end

    prototype.weapons.each do |weapon|
      weapon.dup.update_attributes(grid: self)
    end

    prototype.terrains.each do |terrain|
      terrain.dup.update_attributes(terrainable: self)
    end

    prototype.tiles.each do |tile|
      tile.dup.update_attributes(grid: self)
    end
  end

end
