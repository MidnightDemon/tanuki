class CreateMaleNames < ActiveRecord::Migration
  def up
    create_table :male_names do |t|
      t.string :name
      
      t.timestamps
    end
  end

  def down
    drop_table :male_names
  end  
end
