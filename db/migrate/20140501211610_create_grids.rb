class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.string :name
      t.integer :height
      t.integer :width
      t.timestamps
    end
  end
end
