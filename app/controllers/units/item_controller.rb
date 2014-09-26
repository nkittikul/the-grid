class Units::ItemController < ApplicationController

  def create
    @grid = Grid.find(params[:grid_id])
    @unit = Unit.find(params[:unit_id])
    @unit.items << Item.find(params[:item_id]).dup
    redirect_to edit_grid_tiles_path(@grid, x: @tile.x, y: @tile.y)
  end

end