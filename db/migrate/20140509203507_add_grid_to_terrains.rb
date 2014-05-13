class AddGridToTerrains < ActiveRecord::Migration
  def change
    add_column :terrains, :grid_id, :integer
  end
end
