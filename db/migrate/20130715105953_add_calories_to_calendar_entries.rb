class AddCaloriesToCalendarEntries < ActiveRecord::Migration
  def change
    add_column :calendar_entries, :calories, :integer
  end
end
