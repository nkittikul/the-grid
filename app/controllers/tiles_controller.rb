class TilesController < ApplicationController
  def edit
    @grid = Grid.find(params[:grid_id])
    @tile = @grid.tiles.find_by(x: params[:x], y: params[:y])
  end

  def update
    @grid = Grid.find(params[:grid_id])
    @tile = @grid.tiles.find_by(x: params[:x], y: params[:y])
    if params[:unit_id]
      @tile.unit = Unit.find(params[:unit_id]).dup
    else
      @tile.terrain = Terrain.find(params[:terrain_id]).dup
    end
    @tile.save
    redirect_to edit_grid_tiles_path(@grid, x: @tile.x, y: @tile.y)
  end

end

