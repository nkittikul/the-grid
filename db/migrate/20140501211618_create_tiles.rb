class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.belongs_to :grid, index: true
      t.belongs_to :unit, index: true
      t.belongs_to :terrain 
      t.integer :x
      t.integer :y
      t.timestamps
    end
  end
end
