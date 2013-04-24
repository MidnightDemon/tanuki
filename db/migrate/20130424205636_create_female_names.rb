class CreateFemaleNames < ActiveRecord::Migration
  def up
    create_table :female_names do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :female_names
  end  
end
