class Item < ActiveRecord::Base
  belongs_to :unit
  belongs_to :grid
end
