class Grid < ActiveRecord::Base
  after_save :find_or_create_tiles
  after_create :initialize_terrain
  has_many :tiles
  has_many :terrains
  has_many :units

  def find_or_create_tiles
    self.width.times do |x|
      self.height.times do |y|
        self.tiles.find_or_create_by(x: x, y: y)
      end
    end
  end

  def initialize_terrain
    Grid.first.terrains.each do |terrain|
      new_terrain = terrain.clone
      new_terrain.grid = self
      new_terrain.save
    end
  end

end
