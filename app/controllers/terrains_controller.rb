class TerrainsController < ApplicationController
  before_action :load_grid

  # def index
  #   @terrains = Terrain.all
  # end

  def show
    @terrain = Terrain.find(params[:id])
  end

  def new
    @terrain = Terrain.new
    session[:stored_action] = request.referrer
  end

  def edit
    @terrain = Terrain.find(params[:id])
    session[:stored_action] = request.referrer
  end

  def create
    @terrain = Terrain.new(terrain_params)
    @terrain.terrainable = @grid
    @terrain.save
    redirect_to (session[:stored_action] || @grid)
  end

  def update
    @terrain = Terrain.find(params[:id])
    @terrain.update_attributes(terrain_params)
    redirect_to (session[:stored_action] || @grid)
  end

  def destroy
  end

  private

  def terrain_params
    params.require(:terrain).permit(:name, :defense, :movement_cost, :image)
  end

  def load_grid
    @grid = Grid.find(params[:grid_id])
  end

end
