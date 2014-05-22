class Tiles::TerrainController < ApplicationController

  def edit
  end

  def update
    @grid = Grid.find(params[:grid_id])
    @tile = @grid.tiles.find_by(x: params[:x], y: params[:y])
    @tile.terrain = Terrain.find(params[:terrain_id]).dup
    @tile.save
    redirect_to edit_grid_tiles_path(@grid, x: @tile.x, y: @tile.y)
  end

end