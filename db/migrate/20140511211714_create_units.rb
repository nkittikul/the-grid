class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :unit_class
      t.integer :level
      t.integer :max_hp
      t.integer :current_hp
      t.integer :exp
      t.integer :strength
      t.integer :magic
      t.integer :skill
      t.integer :speed
      t.integer :luck
      t.integer :defense
      t.integer :resistance
      t.string :map_image
      t.string :portrait_image
      t.belongs_to :unitable, polymorphic: true
      # t.integer :grid_id
      # t.integer :tile_id

      t.timestamps
    end
  end
end
