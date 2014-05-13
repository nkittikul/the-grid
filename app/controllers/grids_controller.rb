class GridsController < ApplicationController
  def index
    @grids = Grid.all
  end

  def show
    @grid = Grid.find(params[:id])
  end

  def new
    @grid = Grid.new
  end

  def edit
    @grid = Grid.find(params[:id])
  end

  def create
    @grid = Grid.new(grid_params)
    @grid.save
    redirect_to @grid
  end

  def update
    @grid = Grid.find(params[:id])
    @grid.update_attributes(grid_params)
    redirect_to @grid
  end

  private

  def grid_params
    params.require(:grid).permit(:name, :width, :height)
  end
end
