class Tile < ActiveRecord::Base
  before_create :set_defaults
  belongs_to :grid
  belongs_to :terrain
  belongs_to :unit

  def set_defaults
    self.terrain = Terrain.find_by_name('Grass')
  end
end
