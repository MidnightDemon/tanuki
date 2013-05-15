class AddUserIdToCalendarEntries < ActiveRecord::Migration
  def change
    add_column :calendar_entries, :user_id, :integer
  end
end
