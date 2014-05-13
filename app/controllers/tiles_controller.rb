class TilesController < ApplicationController
  def edit
    @grid = Grid.find(params[:grid_id])
    @tile = @grid.tiles.find_by(x: params[:x], y: params[:y])
  end

  def update
    @grid = Grid.find(params[:grid_id])
    @tile = @grid.tiles.find_by(x: params[:x], y: params[:y])
    @tile.update_attributes(tile_params)
    redirect_to edit_grid_tiles_path(@grid, x: @tile.x, y: @tile.y)
  end

  private

  def tile_params
    params.require(:tile).permit(:terrain_id, :unit_id)
  end

end
