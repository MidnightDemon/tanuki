class CreateCalendarEntries < ActiveRecord::Migration
  def change
    create_table :calendar_entries do |t|
      t.string :date
      t.integer :slot
      t.string :content

      t.timestamps
    end
  end
end
