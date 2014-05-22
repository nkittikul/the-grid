class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :image
      t.string :type
      t.integer :might
      t.integer :weight
      t.integer :hit_chance
      t.integer :current_uses
      t.integer :max_uses
      t.string :rank
      t.integer :unit_id
      t.integer :grid_id

      t.timestamps
    end
  end
end
