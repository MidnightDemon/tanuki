class AddFoodTimeIdToCalendarEntries < ActiveRecord::Migration
  def change
    add_column :calendar_entries, :food_time_id, :integer

  end
end
