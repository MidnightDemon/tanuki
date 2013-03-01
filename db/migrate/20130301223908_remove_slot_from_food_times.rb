class RemoveSlotFromFoodTimes < ActiveRecord::Migration
  def up
    remove_column :food_times, :slot
  end

  def down
    add_column :food_times, :slot, :integer 
  end
end