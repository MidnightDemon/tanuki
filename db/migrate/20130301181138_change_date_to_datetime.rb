class ChangeDateToDatetime < ActiveRecord::Migration
  def up
    change_column :calendar_entries, :date, :datetime 
  end

  def down
    change_column :calendar_entries, :date, :integer 
  end
end
