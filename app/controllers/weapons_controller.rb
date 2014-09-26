class WeaponsController < ApplicationController
  before_action :load_grid

  def new
    @weapon = Weapon.new
  end

  def edit
    @weapon = Weapon.find(params[:id])
  end

  def create
    @weapon = Weapon.new(weapon_params)
    @weapon.weaponable = @grid
    @weapon.save
    redirect_to @grid
  end

  def update
    @weapon = Weapon.find(params[:id])
    @weapon.update_attributes(weapon_params)
  end

  private

  def weapon_params
    params.require(:weapon).permit(:name, :image, :type, :might, :weight, :hit_chance, :max_uses, :rank)
  end

  def load_grid
    @grid = Grid.find(params[:grid_id])
  end
end
