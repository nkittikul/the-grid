class Weapon < ActiveRecord::Base
  # belongs_to :unit
  # belongs_to :grid
  belongs_to :weaponable, polymorphic: true

  def initialize_dup(prototype)
    super
    self.current_uses = prototype.max_uses
  end

end
