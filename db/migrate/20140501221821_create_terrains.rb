class CreateTerrains < ActiveRecord::Migration
  def change
    create_table :terrains do |t|
      t.string :name
      t.integer :defense
      t.integer :movement_cost
      t.string :image
      t.belongs_to :terrainable, polymorphic: true

      t.timestamps
    end
  end
end
