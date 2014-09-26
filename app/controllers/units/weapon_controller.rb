class Units::WeaponController < ApplicationController

  def create
    @grid = Grid.find(params[:grid_id])
    @unit = Unit.find(params[:unit_id])
    @tile = @unit.unitable
    @unit.weapons << Weapon.find(params[:weapon_id]).dup
    redirect_to edit_grid_tiles_path(@grid, x: @tile.x, y: @tile.y)
  end

end