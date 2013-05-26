class DropMaleNames < ActiveRecord::Migration
  def change
    drop_table :male_names
  end  
end
