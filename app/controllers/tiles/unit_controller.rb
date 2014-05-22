class Tiles::UnitController < ApplicationController

  def edit
  end

  def update
    @grid = Grid.find(params[:grid_id])
    @tile = @grid.tiles.find_by(x: params[:x], y: params[:y])
    @tile.unit = Unit.find(params[:unit_id]).dup
    @tile.save
    redirect_to edit_grid_tiles_path(@grid, x: @tile.x, y: @tile.y)
  end
end