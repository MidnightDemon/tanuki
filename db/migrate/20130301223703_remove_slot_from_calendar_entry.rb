class RemoveSlotFromCalendarEntry < ActiveRecord::Migration
  def up
    remove_column :calendar_entries, :slot
  end

  def down
    add_column :calendar_entries, :slot, :integer 
  end
end
