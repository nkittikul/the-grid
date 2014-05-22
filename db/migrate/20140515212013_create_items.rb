class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :stat
      t.integer :current_uses
      t.integer :max_uses
      t.integer :stat_increase
      t.integer :unit_id
      t.integer :grid_id

      t.timestamps
    end
  end
end
