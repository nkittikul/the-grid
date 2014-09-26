class UnitsController < ApplicationController
  before_action :load_grid

  def new
    @unit = Unit.new
    session[:stored_action] = request.referrer
  end

  def edit
    @unit = Unit.find(params[:id])
    session[:stored_action] = request.referrer
  end

  def create
    @unit = Unit.new(unit_params)
    @unit.unitable = @grid
    @unit.save
    redirect_to (session[:stored_action] || @grid)
  end

  def update
    @unit = Unit.find(params[:id])
    @unit.update_attributes(unit_params)
    redirect_to (session[:stored_action] || @grid)
  end

  def destroy
  end

  private

  def unit_params
    params.require(:unit).permit(:name, :unit_class, :level, :max_hp, :strength, :magic, :skill, :speed, :luck, :defense, :resistance, :map_image, :portrait_image)
  end

  def load_grid
    @grid = Grid.find(params[:grid_id])
  end
end
