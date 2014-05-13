class UnitsController < ApplicationController
  before_action :load_grid

  def new
    @unit = Unit.new
  end

  def edit
    @unit = Unit.find(params[:id])
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.grid = @grid
    @unit.save
    redirect_to @grid
  end

  def update
    @unit = Unit.find(params[:id])
    @unit.update_attributes(unit_params)
    redirect_to @grid
  end

  def destroy
  end

  private

  def unit_params
    params.require(:unit).permit(:name, :class, :level, :max_up, :strength, :magic, :skill, :speed, :luck, :defense, :resistance)
  end

  def load_grid
    @grid = Grid.find(params[:grid_id])
  end
end
