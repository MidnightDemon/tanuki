class ChangeCaloriesToDefaultZero < ActiveRecord::Migration
  def self.up
    change_column :calendar_entries, :calories, :integer, default: "0"
  end
end
