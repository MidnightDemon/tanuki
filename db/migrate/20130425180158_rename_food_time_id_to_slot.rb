class RenameFoodTimeIdToSlot < ActiveRecord::Migration
  def up
  	rename_column :calendar_entries, :food_time_id, :slot
  end

  def down
  	rename_column :calendar_entries, :slot, :food_time_id
  end
end
