class TilesController < ApplicationController
  def edit
    @grid = Grid.find(params[:grid_id])
    @tile = @grid.tiles.find_by(x: params[:x], y: params[:y])
  end

end

