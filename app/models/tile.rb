class Tile < ActiveRecord::Base
  before_create :set_defaults
  belongs_to :grid
  has_one :terrain, as: :terrainable
  has_one :unit, as: :unitable

  def set_defaults
    t = Terrain.first.dup
    t.save
    self.terrain = t
  end

  def initialize_dup(prototype)
    super
    self.update_attributes(unit: prototype.unit.dup) unless prototype.unit.nil?
    self.update_attributes(terrain: prototype.terrain.dup) unless prototype.terrain.nil?
  end

end


