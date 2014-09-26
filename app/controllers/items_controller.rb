class ItemsController < ApplicationController
  before_action :load_grid

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    @item.itemable = @grid
    @item.save
  end

  def update
    @item = Item.find(params[:id])
    @item.update_attributes(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :stat, :max_uses, :stat_increase)
  end

  def load_grid
    @grid = Grid.find(params[:grid_id])
  end
end
